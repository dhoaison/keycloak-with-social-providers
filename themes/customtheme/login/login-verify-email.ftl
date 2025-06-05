<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <style>
        body {
            background: #f8f8f9;
            font-family: Arial, sans-serif;
            display: flex;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
            margin: 0;
        }

        .container {
            max-width: 400px;
            width: 90%;
            background: #fff;
            padding: 2em;
            border-radius: 12px;
            box-shadow: 0 0 16px rgba(0, 0, 0, 0.06);
            text-align: center;
        }

        .message {
            font-size: 1.05em;
            color: #444;
            margin-bottom: 30px;
            line-height: 1.6;
        }

        button {
            padding: 12px 24px;
            background: #000;
            color: white;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            font-weight: bold;
            font-size: 1em;
            transition: background 0.2s;
        }

        button:disabled {
            background: #666;
            cursor: not-allowed;
        }

        button:hover:not(:disabled) {
            background: #171717;
        }

        #countdown {
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div class="container">
        <p class="message">
            We've already sent a verification email to your address.<br>
            Please check your inbox (and spam folder) to complete your verification.<br>
            <span id="resend-text">You can resend the email in <span id="countdown">30</span> seconds.</span>
        </p>
        <form action="${url.loginAction}" method="post">
            <button id="resend-btn" name="resend" value="true" disabled>Resend Email</button>
        </form>
    </div>

    <script>
        let seconds = 30;
        const countdownEl = document.getElementById('countdown');
        const resendTextEl = document.getElementById('resend-text');
        const button = document.getElementById('resend-btn');

        const timer = setInterval(() => {
            seconds--;
            countdownEl.textContent = seconds;

            if (seconds <= 0) {
                clearInterval(timer);
                button.disabled = false;
                resendTextEl.textContent = "You can resend the email now";
            }
        }, 1000);
    </script>
</body>
</html>
