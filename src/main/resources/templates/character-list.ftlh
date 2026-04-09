<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Aura Academy | The Infinite Vault</title>
    <link rel="stylesheet" href="/style.css">
    <style>
        body { 
            background-color: #000; 
            color: white; 
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
        }
        nav {
            background: rgba(0,0,0,0.9);
            border-bottom: 1px solid #222;
            padding: 15px 0;
        }
        .nav-content {
            max-width: 1200px;
            margin: auto;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 30px;
        }
        .nav-links a {
            color: #888;
            text-decoration: none;
            text-transform: uppercase;
            font-size: 0.8em;
            letter-spacing: 1px;
            transition: color 0.3s;
        }
        .nav-links a:hover { color: #ff0000; }

        .character-grid {
            display: flex;
            justify-content: center;
            gap: 25px;
            flex-wrap: wrap;
            padding: 40px;
        }
        .character-card {
            background: #111;
            border: 1px solid #222;
            transition: all 0.3s ease;
            padding: 30px;
            width: 280px;
            text-align: center;
            border-radius: 2px;
            position: relative;
        }
        .character-card:hover {
            transform: translateY(-8px);
            border-color: #ff0000;
            box-shadow: 0 10px 30px rgba(255, 0, 0, 0.1);
        }
        .card-name {
            margin: 0;
            font-size: 1.6em;
            letter-spacing: 1px;
            text-transform: uppercase;
        }
        .card-universe {
            color: #ff0000;
            font-weight: bold;
            font-size: 0.75em;
            text-transform: uppercase;
            margin: 10px 0 20px 0;
            letter-spacing: 2px;
        }
        .card-desc {
            color: #666;
            font-size: 0.9em;
            line-height: 1.5;
            height: 45px;
            overflow: hidden;
            margin-bottom: 25px;
        }
        .btn-aura {
            background: #ff0000;
            color: white !important;
            padding: 12px 0;
            text-decoration: none;
            display: block;
            font-weight: bold;
            text-transform: uppercase;
            font-size: 0.9em;
            letter-spacing: 1px;
            transition: background 0.3s;
        }
        .btn-aura:hover { background: #cc0000; }
        
        .btn-terminate {
            color: #333;
            text-decoration: none;
            font-size: 0.7em;
            margin-top: 20px;
            display: inline-block;
            text-transform: uppercase;
            letter-spacing: 1px;
            transition: color 0.3s;
        }
        .btn-terminate:hover { color: #ff4444; }
    </style>
</head>
<body>
    <nav>
        <div class="nav-content">
            <a href="/mvc/characters/all">
                <img src="/sharingan2.png" alt="Aura Logo" style="width: 35px;">
            </a>
            <div class="nav-links">
                <a href="/mvc/characters/all">Home</a>
                <span style="color:#333; margin: 0 10px;">|</span>
                <a href="/mvc/characters/about">About</a>
                <span style="color:#333; margin: 0 10px;">|</span>
                <a href="/mvc/characters/new">Add Subject</a>
            </div>
        </div>
    </nav>

    <main style="padding-top: 60px;">
        <h1 style="text-align: center; text-transform: uppercase; letter-spacing: 8px; font-size: 2.5em; margin-bottom: 5px;">The Infinite Vault</h1>
        <p style="text-align: center; color: #444; text-transform: uppercase; font-size: 0.8em; letter-spacing: 3px; margin-bottom: 50px;">Classified Database Access Authorized</p>

        <div class="character-grid">
            <#list characterList as character>
                <div class="character-card">
                    <h3 class="card-name">${character.name}</h3>
                    <p class="card-universe">Origin: ${character.universe!"Unknown"}</p>
                    <p class="card-desc">${character.description!"No current analysis data available."}</p>
                    
                    <a href="/mvc/characters/${character.characterId?c}" class="btn-aura">Access Profile</a>
                    <a href="/mvc/characters/delete/${character.characterId?c}" class="btn-terminate">Terminate Record</a>
                </div>
            <#else>
                <p style="color: #444; text-transform: uppercase; letter-spacing: 2px;">Vault is currently empty. Initializing scanners...</p>
            </#list>
        </div>
    </main>
</body>
</html>