## Olá, pessoal! 👋

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cyber Security Banner</title>

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            background: #020604;
            font-family: "Courier New", monospace;
            color: #00ff88;
        }

        .banner {
            position: relative;
            width: 100%;
            min-height: 350px;
            padding: 60px 20px;
            overflow: hidden;
            text-align: center;
            background:
                radial-gradient(ellipse at center,
                #07351f 0%, #020604 70%);
            border: 1px solid #00ff8855;
        }

        .banner::before {
            content: "";
            position: absolute;
            inset: 0;
            background-image:
                linear-gradient(#00ff8815 1px, transparent 1px),
                linear-gradient(90deg, #00ff8815 1px, transparent 1px);
            background-size: 30px 30px;
            mask-image: linear-gradient(
                to bottom, black, transparent
            );
        }

        .content {
            position: relative;
            z-index: 1;
        }

        .icon {
            font-size: 48px;
            margin-bottom: 15px;
            text-shadow: 0 0 20px #00ff88;
        }

        h1 {
            font-size: clamp(25px, 5vw, 48px);
            letter-spacing: 5px;
            text-shadow: 0 0 10px #00ff88,
                         0 0 30px #00ff8877;
        }

        .subtitle {
            margin-top: 18px;
            color: #a0ffc9;
            font-size: 14px;
            letter-spacing: 2px;
        }

        .status {
            margin-top: 28px;
            font-size: 12px;
            color: #00ff88;
        }

        .status span {
            animation: blink 1s infinite;
        }

        .line {
            width: 180px;
            height: 2px;
            background: #00ff88;
            margin: 20px auto;
            box-shadow: 0 0 15px #00ff88;
        }

        @keyframes blink {
            50% { opacity: 0; }
        }

        @media (max-width: 480px) {
            .banner {
                min-height: 300px;
                padding: 45px 12px;
            }

            h1 {
                letter-spacing: 2px;
            }

            .subtitle {
                line-height: 1.8;
            }
        }
    </style>
</head>

<body>
    <header class="banner">
        <div class="content">
            <div class="icon">🛡️</div>

            <h1>CYBER SECURITY</h1>

            <div class="line"></div>

            <p class="subtitle">
                ETHICAL HACKING | NETWORK SECURITY | DEFENSE
            </p>

            <p class="status">
                <span>●</span> SYSTEM SECURE // ACCESS GRANTED
            </p>
        </div>
    </header>
</body>
</html>
