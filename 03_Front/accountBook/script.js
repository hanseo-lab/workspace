// ===== 전역 변수 =====
// 모든 거래 내역을 저장하는 배열
let categorys = []; 
// 현재 선택된 거래 유형 (수입/지출)
let categoryType = 'income';
// 현재 필터 상태 (전체/수입/지출)
let filterState = 'all';

// DOM 요소
const currentBalanceEl = document.getElementById('current-balance');
const descriptionInput = document.getElementById('description-input');
const amountInput = document.getElementById('amount-input');
const incomeBtn = document.getElementById('income-btn');
const expenseBtn = document.getElementById('expense-btn');
const addBtn = document.getElementById('add-btn');
const totalIncomeEl = document.getElementById('total-income');
const totalExpenseEl = document.getElementById('total-expense');
const summaryBalanceEl = document.getElementById('summary-balance');
const categoryList = document.getElementById('category-list');
const filterButtons = document.querySelectorAll('.filter-section button');

// 로컬 스토리지에서 데이터 불러오기
function loadCategorysFromLocalStorage() {
    const storedCategorys = localStorage.getItem('categorys');
    let loadedData = [];

    if (storedCategorys) {
        try {
            loadedData = JSON.parse(storedCategorys);
        } catch (e) {
            console.error("로컬 스토리지 데이터 파싱 오류:", e);
            loadedData = [];
        }
    }

    let restoredCategorys = [];
    for (const item of loadedData) {
        item.date = new Date(item.date);
        restoredCategorys.push(item);
    }

    categorys = restoredCategorys;
}

// 로컬 스토리지에 데이터를 저장하는 함수
function saveCategorysToLocalStorage() {
    localStorage.setItem('categorys', JSON.stringify(categorys));
}

// ===== 초기화 함수 =====
function init() {
    loadCategorysFromLocalStorage(); 
    bindEvents();
    render();
}

// 이벤트 리스너를 등록하는 함수
function bindEvents() {
    // 수입/지출 버튼 클릭 이벤트
    incomeBtn.addEventListener('click', function () {
        categoryType = 'income';
        incomeBtn.classList.add('active');
        expenseBtn.classList.remove('active');
    });

    expenseBtn.addEventListener('click', function () {
        categoryType = 'expense';
        expenseBtn.classList.add('active');
        incomeBtn.classList.remove('active');
    });

    // '추가하기' 버튼 클릭 이벤트
    addBtn.addEventListener('click', addCategory);

    // 필터 버튼 클릭 이벤트
    filterButtons.forEach(button => {
        button.addEventListener('click', function (ev) {
            setFilter(ev.target.dataset.filter);
        });
    });

}

// =====데이터 조작 함수 =====

// 새로운 거래 내역을 추가하는 함수
function addCategory() {
    const description = descriptionInput.value.trim();
    const amount = parseFloat(amountInput.value);

    // 입력 유효성 검사
    if (description === '' || isNaN(amount) || amount <= 0) {
        alert('내용과 유효한 금액을 입력해주세요.');
        return;
    }

    const newCategory = {
        id: Date.now(),
        description,
        amount,
        type: categoryType,
        date: new Date()
    };

    categorys.push(newCategory);
    saveCategorysToLocalStorage();
    descriptionInput.value = '';
    amountInput.value = '';

    render();
}

// 거래 내역을 삭제하는 함수
function deleteCategory(id) {
    categorys = categorys.filter(category => category.id !== id);

    saveCategorysToLocalStorage();
    render();
}

// 현재 필터에 따라서 거래 목록을 필터링하여 반환하는 함수
function getFilteredCategorys() {
    let filteredCategorys = [];

    for (let category of categorys) {
        if (filterState === 'all' || category.type === filterState) {
            filteredCategorys.push(category);
        }
    }

    // 배열 정렬 (최신 내역이 위로 오도록)
    filteredCategorys.sort(function (a, b) {
        return b.date.getTime() - a.date.getTime();
    });

    return filteredCategorys;
}

// ===== 화면 렌더링을 위한 함수 =====

// 메인 렌더링 함수
function render() {
    renderSummary();
    renderCategorys();
}

// 잔액 표시를 업데이트하고 색상 클래스를 적용하는 헬퍼 함수
function updateBalanceDisplay(element, balance) {
    element.textContent = balance.toLocaleString() + '원';

    element.classList.remove('balance-positive', 'balance-negative');

    if (balance > 0) {
        element.classList.add('balance-positive');
    } else if (balance < 0) {
        element.classList.add('balance-negative');
    }
}

// 전체 거래 내역을 기반으로 요약 정보를 업데이트하는 함수
function renderSummary() {
    let totalIncome = 0;
    let totalExpense = 0;

    categorys.forEach(function (category) {
        if (category.type === 'income') {
            totalIncome += category.amount;
        } else {
            totalExpense += category.amount;
        }
    });

    const totalBalance = totalIncome - totalExpense;

    // 잔액 글자색 변경 로직 추가
    updateBalanceDisplay(currentBalanceEl, totalBalance);
    updateBalanceDisplay(summaryBalanceEl, totalBalance);

    totalIncomeEl.textContent = totalIncome.toLocaleString() + '원';
    totalExpenseEl.textContent = totalExpense.toLocaleString() + '원';
}

// 필터링된 거래 목록을 화면에 그리는 함수
function renderCategorys() {
    categoryList.innerHTML = "";

    const filteredCategorys = getFilteredCategorys();

    if (filteredCategorys.length === 0) {
        renderEmptyState();
    } else {
        filteredCategorys.forEach(function (category) {
            renderCategoryItem(category);
        });
    }
}

// '거래 내역 없음' 상태를 렌더링하는 함수
function renderEmptyState() {
    const emptyEl = document.createElement('li');
    emptyEl.className = 'category-item empty-state'; 
    emptyEl.textContent = '거래 내역이 없습니다.';
    categoryList.appendChild(emptyEl);
}

// 개별 거래 아이템을 렌더링하는 함수
function renderCategoryItem(category) {
    const itemEl = document.createElement('li');
    itemEl.classList.add('category-item');
    itemEl.setAttribute('data-id', category.id);

    const amountSign = category.type === 'income' ? '+' : '-';
    const amountFormatted = amountSign + Math.abs(category.amount).toLocaleString() + '원';

    const date = category.date;
    const dateFormatted = date.getFullYear() + '년 ' + (date.getMonth() + 1) + '월 ' + date.getDate() + '일';

    itemEl.innerHTML = `
        <div class="item-details">
            <span class="item-date">${dateFormatted}</span>
            <span class="item-description">${category.description}</span>
        </div>
        <div class="item-amount-wrapper">
            <span class="item-amount ${category.type}">${amountFormatted}</span>
            <button class="delete-btn" data-id="${category.id}">삭제</button>
        </div>
    `;
    
    const deleteBtn = itemEl.querySelector('.delete-btn');
    deleteBtn.addEventListener('click', function() {
        // 버튼의 data-id 속성에서 ID를 가져와 삭제 함수 호출
        const id = parseInt(this.dataset.id);
        deleteCategory(id); 
    });
    
    categoryList.appendChild(itemEl);
}

// 필터 상태를 설정하고 목록을 업데이트
function setFilter(filter) {
    filterState = filter;

    filterButtons.forEach(function (btn) {
        btn.classList.remove('active');
        if (btn.dataset.filter === filter) {
            btn.classList.add('active');
        }
    });

    renderCategorys();
}

// === 앱 시작 ===
document.addEventListener('DOMContentLoaded', init);