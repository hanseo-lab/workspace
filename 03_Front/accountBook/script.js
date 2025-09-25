document.addEventListener('DOMContentLoaded', () => {
    // DOMContentLoaded: HTML 문서가 완전히 로드된 후 스크립트 실행
    // 모든 DOM 요소 선택 및 변수 할당
    const currentBalanceEl = document.getElementById('current-balance');
    const descriptionInput = document.getElementById('description-input');
    const amountInput = document.getElementById('amount-input');
    const incomeBtn = document.getElementById('income-btn');
    const expenseBtn = document.getElementById('expense-btn');
    const addBtn = document.getElementById('add-btn');
    const totalIncomeEl = document.getElementById('total-income');
    const totalExpenseEl = document.getElementById('total-expense');
    const summaryBalanceEl = document.getElementById('summary-balance');
    const transactionList = document.getElementById('transaction-list');
    const filterButtons = document.querySelectorAll('.filter-section button');

    // 상태 변수: 앱의 현재 상태를 저장
    let transactions = []; // 모든 거래 내역을 저장할 배열
    let transactionType = 'income'; // 현재 선택된 거래 유형 (기본값)

    // 로컬 스토리지에서 데이터 불러오기
    function loadTransactionsFromLocalStorage() {
        const storedTransactions = localStorage.getItem('transactions');
        if (storedTransactions) { // JSON 문자열을 객체로 변환하고, 날짜 객체 재구성
            transactions = JSON.parse(storedTransactions).map(item => ({
                ...item,
                date: new Date(item.date) // 문자열로 저장된 날짜를 다시 Date 객체로 변환
            }));
        }
    }

    // 로컬 스토리지에 데이터 저장하기
    function saveTransactionsToLocalStorage() {
        // 객체 배열을 JSON 문자열로 변환하여 저장
        localStorage.setItem('transactions', JSON.stringify(transactions));
    }

    // 새로운 거래 추가
    function addTransaction() {
        const description = descriptionInput.value.trim();
        const amount = parseFloat(amountInput.value);

        // 입력 유효성 검사
        if (description === '' || isNaN(amount) || amount <= 0) {
            alert('내용과 유효한 금액을 입력해주세요.');
            return;
        }

        // 새로운 거래 내역 객체 생성
        const newTransaction = {
            id: Date.now(), // 현재 시간을 ms 단위로 변환 -> 고유한 ID로 사용
            description,
            amount,
            type: transactionType,
            date: new Date()
        };

        transactions.push(newTransaction); // 새로운 거래를 목록에 추가
        saveTransactionsToLocalStorage(); // 변경사항 저장
        descriptionInput.value = '';
        amountInput.value = '';

        updateUI(); // 모든 UI 업데이트
    }

    // 거래 내역 삭제
    function deleteTransaction(id) {
        // filter() 메서드를 사용하여 특정 ID를 가진 항목을 배열에서 제거
        transactions = transactions.filter(t => t.id !== id);
        saveTransactionsToLocalStorage(); // 변경사항 저장
        updateUI(); // 모든 UI 업데이트
    }

    // 모든 UI 업데이트 (요약 및 목록)
    function updateUI() {
        renderSummary();
        renderTransactions();
    }

    // 요약 정보 렌더링
    function renderSummary() {
        let totalIncome = 0;
        let totalExpense = 0;
        transactions.forEach(transaction => {
            if (transaction.type === 'income') {
                totalIncome += transaction.amount;
            } else {
                totalExpense += transaction.amount;
            }
        });

        const totalBalance = totalIncome - totalExpense;
        currentBalanceEl.textContent = `${totalBalance.toLocaleString()}원`;
        summaryBalanceEl.textContent = `${totalBalance.toLocaleString()}원`;

        // 잔액 글자색 변경 로직 추가
        if (totalBalance >= 0) {
            currentBalanceEl.classList.add('balance-positive');
            currentBalanceEl.classList.remove('balance-negative');
            summaryBalanceEl.classList.add('balance-positive');
            summaryBalanceEl.classList.remove('balance-negative');
        } else {
            currentBalanceEl.classList.add('balance-negative');
            currentBalanceEl.classList.remove('balance-positive');
            summaryBalanceEl.classList.add('balance-negative');
            summaryBalanceEl.classList.remove('balance-positive');
        }

        totalIncomeEl.textContent = `${totalIncome.toLocaleString()}원`;
        totalExpenseEl.textContent = `${totalExpense.toLocaleString()}원`;
    }

    // 필터링된 거래 목록만 화면에 그리는 함수
    function renderTransactions() {
        const activeFilter = document.querySelector('.filter-section button.active').dataset.filter;

        // 필터링 및 정렬
        const filteredTransactions = transactions
            .filter(t => activeFilter === 'all' || t.type === activeFilter)
            .sort((a, b) => b.date - a.date); // 최신 내역이 위로 오도록 정렬

        transactionList.innerHTML = ''; // 기존 UI 제거

        if (filteredTransactions.length === 0) {
            renderEmptyState();
        } else {
            // 할일 목록이 있는 경우, 각 항목을 렌더링
            filteredTransactions.forEach(transaction => {
                renderTransactionItem(transaction);
            });
        }
    }

    // '거래 내역 없음' 상태를 렌더링하는 함수
    function renderEmptyState() {
        const emptyEl = document.createElement('div');
        emptyEl.className = 'empty-state';
        emptyEl.innerHTML = '내역이 없습니다.';
        transactionList.appendChild(emptyEl);
    }

    // 개별 거래 아이템을 렌더링하는 함수 (컴포넌트 역할)
    function renderTransactionItem(transaction) {
        const itemEl = document.createElement('li');
        itemEl.classList.add('transaction-item');

        const amountSign = transaction.type === 'income' ? '+' : '-';
        const amountFormatted = `${amountSign}${transaction.amount.toLocaleString()}원`;
        const dateFormatted = `${transaction.date.getFullYear()}년 ${transaction.date.getMonth() + 1}월 ${transaction.date.getDate()}일`;

        itemEl.innerHTML = `
            <div class="item-details">
                <span class="item-date">${dateFormatted}</span>
                <span class="item-description">${transaction.description}</span>
            </div>
            <div class="item-amount-wrapper">
                <span class="item-amount ${transaction.type}">${amountFormatted}</span>
                <button class="delete-btn" data-id="${transaction.id}">삭제</button>
            </div>
        `;

        transactionList.appendChild(itemEl);
    }

    // 필터 설정
    function setFilter(filter) {
        filterButtons.forEach(btn => {
            btn.classList.remove('active'); // 모든 버튼에서 active 클래스 제거
            if (btn.dataset.filter === filter) {
                btn.classList.add('active'); // 선택된 버튼에만 active 클래스 추가
            }
        });
        renderTransactions();
    }

    // === 이벤트 리스너 등록 ===
    // '수입'/'지출' 버튼
    incomeBtn.addEventListener('click', () => {
        transactionType = 'income';
        incomeBtn.classList.add('active');
        expenseBtn.classList.remove('active');
    });

    expenseBtn.addEventListener('click', () => {
        transactionType = 'expense';
        expenseBtn.classList.add('active');
        incomeBtn.classList.remove('active');
    });

    // '추가하기' 버튼
    addBtn.addEventListener('click', addTransaction);

    // 필터 버튼
    filterButtons.forEach(button => {
        button.addEventListener('click', () => {
            setFilter(button.dataset.filter);
        });
    });

    // 거래 목록에 대한 이벤트 위임
    transactionList.addEventListener('click', (e) => {
        if (e.target.classList.contains('delete-btn')) {
            const id = parseInt(e.target.dataset.id);
            deleteTransaction(id);
        }
    });

    // 앱 시작 시 초기화
    loadTransactionsFromLocalStorage();
    updateUI();
});