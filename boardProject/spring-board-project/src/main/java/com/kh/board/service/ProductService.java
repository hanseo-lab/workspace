package com.kh.board.service;

import com.kh.board.entity.Product;
import com.kh.board.repository.ProductRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@RequiredArgsConstructor
public class ProductService {

    private final ProductRepository productRepository;

    // 전체 조회
    public List<Product> getAllProducts() {
        return productRepository.findAllByOrderByCreatedAtDesc();
    }

    // 상세 조회
    public Product getProduct(Long id) {
        return productRepository.findById(id)
                .orElseThrow(() -> new IllegalArgumentException("상품이 존재하지 않습니다. id=" + id));
    }

    // 등록
    @Transactional
    public Product createProduct(Product product) {
        if(product.getStatus() == null) {
            product.setStatus("FOR_SALE");
        }
        return productRepository.save(product);
    }

    // 삭제
    @Transactional
    public void deleteProduct(Long id) {
        productRepository.deleteById(id);
    }

    // 수정 (제목, 내용, 가격, 상태, 이미지)
    @Transactional
    public Product updateProduct(Long id, Product requestProduct) {
        Product product = getProduct(id);

        product.setTitle(requestProduct.getTitle());
        product.setContent(requestProduct.getContent());
        product.setPrice(requestProduct.getPrice());
        product.setImageUrl(requestProduct.getImageUrl());
        product.setStatus(requestProduct.getStatus());

        return product; // Transactional 어노테이션에 의해 자동 업데이트 (Dirty Checking)
    }
}