document.addEventListener('DOMContentLoaded', function() {
    const addToCartButtons = document.querySelectorAll('.button_shop');
    let total = 0; // Переменная для хранения общей суммы
    let cartItemCount = 0; // Переменная для хранения количества товаров в корзине
    const cart = {}; // Объект для хранения товаров в корзине и их количества

    // Загрузка данных о корзине из localStorage при загрузке страницы
    const savedCart = localStorage.getItem('cart');
    if (savedCart) {
        Object.assign(cart, JSON.parse(savedCart));
        updateCart();
    }

    addToCartButtons.forEach(button => {
        button.addEventListener('click', function(event) {
            event.preventDefault();

            const productId = this.getAttribute('data-sb-id-or-vendor-code');
            const productName = this.getAttribute('data-sb-product-name');
            const productPrice = parseFloat(this.getAttribute('data-sb-product-price'));
            const productImg = this.getAttribute('data-sb-product-img');

            // Отправка данных на сервер или обработка локально
            addToCart(productId, productName, productPrice, productImg);
        });
    });

    function addToCart(productId, productName, productPrice, productImg) {
        // Если товар уже есть в корзине, увеличиваем его количество и общую сумму
        if (cart[productId]) {
            cart[productId].quantity++;
            cart[productId].total += productPrice;
        } else {
            // Иначе создаем новую запись о товаре
            cart[productId] = {
                name: productName,
                price: productPrice,
                img: productImg,
                quantity: 1,
                total: productPrice
            };
        }

        // Обновляем UI корзины
        updateCart();
    }

    function updateCart() {
        renderCart();
        updateForm();
        updateCartCount();
        updateTotal();
        saveCartToLocalStorage();
    }

    function renderCart() {
        // Очищаем корзину перед рендерингом
        const cartContainer = document.querySelector('.smart_basket');
        cartContainer.innerHTML = '';

        // Рендерим каждый товар в корзине
        for (const [productId, item] of Object.entries(cart)) {
            const cartItemElement = document.createElement('div');
            cartItemElement.classList.add('cart-item');
            cartItemElement.innerHTML = `
                <img src="${item.img}" alt="${item.name}">
                <div class="cart_content">
                    <h4>${item.name}</h4>
                    <h5>${item.price}</h5>
                    <button class="decrease-quantity" data-id="${productId}" ${item.quantity === 1 ? 'disabled' : ''}>-</button>
                    <p><span class="quantity">${item.quantity}</span></p>
                    <button class="increase-quantity" data-id="${productId}">+</button>
                    <p>${item.total.toFixed(2)}</p>
                    <span class="remove-item" data-id="${productId}">удалить</span>
                </div>
            `;
            cartContainer.appendChild(cartItemElement);
        }

        // Добавляем обработчики событий для кнопок "Увеличить" и "Уменьшить"
        const increaseButtons = document.querySelectorAll('.increase-quantity');
        increaseButtons.forEach(button => {
            button.addEventListener('click', function(event) {
                event.preventDefault();
                const productId = this.getAttribute('data-id');
                increaseQuantity(productId);
            });
        });

        const decreaseButtons = document.querySelectorAll('.decrease-quantity');
        decreaseButtons.forEach(button => {
            button.addEventListener('click', function(event) {
                event.preventDefault();
                const productId = this.getAttribute('data-id');
                decreaseQuantity(productId);
            });
        });
    }

    function increaseQuantity(productId) {
        // Увеличиваем количество товара в корзине и обновляем UI
        cart[productId].quantity++;
        cart[productId].total += cart[productId].price;
        updateCart();
    }

    function decreaseQuantity(productId) {
        // Уменьшаем количество товара в корзине и обновляем UI
        if (cart[productId].quantity > 1) {
            cart[productId].quantity--;
            cart[productId].total -= cart[productId].price;
        } else {
            delete cart[productId]; // Если количество стало нулевым, удаляем товар из корзины
        }
        updateCart();
    }

    function updateTotal() {
        // Обновляем UI общей суммы
        const totalElement = document.querySelector('.total');
        totalElement.textContent = `$${calculateTotal().toFixed(2)}`;

        // Показываем общую сумму также в элементе total-container
        const totalContainer = document.querySelector('.total-container');
        totalContainer.style.display = 'block';
        totalContainer.querySelector('.total').textContent = `$${calculateTotal().toFixed(2)}`;
    }

    function updateForm() {
        // Добавляем выбранные товары к форме перед отправкой
        const form = document.querySelector('.checkout-form');

        // Удаляем все скрытые поля из формы перед обновлением
        form.querySelectorAll('input[type="hidden"]').forEach(input => input.remove());

        // Для каждого товара в корзине добавляем скрытое поле в форму
        for (const [productId, item] of Object.entries(cart)) {
            const inputName = document.createElement('input');
            inputName.setAttribute('type', 'hidden');
            inputName.setAttribute('name', `products[${productId}]`);
            inputName.setAttribute('value', `${item.name}|${item.price}|${item.quantity}`);
            form.appendChild(inputName);
        }
    }

    function updateCartCount() {
        // Обновляем количество товаров в корзине
        const cartCountElement = document.querySelector('.cart-count');
        cartCountElement.textContent = calculateCartItemCount().toString();

        // Показываем контейнер с количеством товаров в корзине
        const cartCountContainer = document.querySelector('.cart-count-container');
        cartCountContainer.style.display = 'block';
    }

    function calculateCartItemCount() {
        // Считаем общее количество товаров в корзине
        let count = 0;
        for (const item of Object.values(cart)) {
            count += item.quantity;
        }
        return count;
    }

    function calculateTotal() {
        // Считаем общую сумму корзины
        let total = 0;
        for (const item of Object.values(cart)) {
            total += item.price * item.quantity;
        }
        return total;
    }

    function saveCartToLocalStorage() {
        // Сохраняем данные о корзине в localStorage
        localStorage.setItem('cart', JSON.stringify(cart));
    }

    document.addEventListener('click', function(event) {
        if (event.target.classList.contains('remove-item')) {
            const productId = event.target.getAttribute('data-id');

            // Удаляем товар из корзины
            delete cart[productId];

            // Обновляем корзину и localStorage
            updateCart();
        }
    });
});