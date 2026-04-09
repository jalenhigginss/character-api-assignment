<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Aura Tracker | Register Subject</title>
    <link rel="stylesheet" href="/style.css">
</head>
<body style="background: #000; color: white; margin: 0; font-family: 'Segoe UI', sans-serif;">

    <nav style="background: rgba(0,0,0,0.9); border-bottom: 1px solid #222; padding: 15px 0; text-align: center;">
        <div style="display: flex; align-items: center; justify-content: center; gap: 30px;">
            <a href="/mvc/characters/all">
                <img src="/sharingan2.png" alt="Aura Logo" style="width: 30px;">
            </a>
            <div style="text-transform: uppercase; font-size: 0.8em; letter-spacing: 2px;">
                <a href="/mvc/characters/all" style="color: #888; text-decoration: none;">Home</a> 
                <span style="color: #333; margin: 0 10px;">|</span>
                <a href="/mvc/characters/about" style="color: #888; text-decoration: none;">About</a>
            </div>
        </div>
    </nav>

    <div style="display: flex; justify-content: center; align-items: center; min-height: 80vh; padding: 20px;">
        <div style="background: #0a0a0a; padding: 50px; border: 1px solid #1a1a1a; border-top: 4px solid #ff0000; width: 100%; max-width: 500px; box-shadow: 0 20px 50px rgba(0,0,0,0.5);">
            
            <h1 style="text-transform: uppercase; letter-spacing: 4px; margin: 0; font-size: 1.8em; text-align: center;">Register New Subject</h1>
            <p style="color: #444; text-align: center; font-size: 0.8em; text-transform: uppercase; letter-spacing: 1px; margin-top: 10px;">Enter a legend into the Research Institute database.</p>

            <form action="/mvc/characters/create" method="post" style="margin-top: 40px; display: flex; flex-direction: column; gap: 20px;">
                
                <div>
                    <label style="color: #666; font-size: 0.7em; text-transform: uppercase; letter-spacing: 1px; display: block; margin-bottom: 8px;">Subject Name</label>
                    <input type="text" name="name" required style="width: 100%; background: #111; border: 1px solid #222; padding: 12px; color: white; box-sizing: border-box;">
                </div>

                <div>
                    <label style="color: #666; font-size: 0.7em; text-transform: uppercase; letter-spacing: 1px; display: block; margin-bottom: 8px;">Aura Analysis (Description)</label>
                    <textarea name="description" required style="width: 100%; background: #111; border: 1px solid #222; padding: 12px; color: white; height: 80px; box-sizing: border-box; resize: none;"></textarea>
                </div>

                <div>
                    <label style="color: #666; font-size: 0.7em; text-transform: uppercase; letter-spacing: 1px; display: block; margin-bottom: 8px;">Alias (Optional)</label>
                    <input type="text" name="alias" style="width: 100%; background: #111; border: 1px solid #222; padding: 12px; color: white; box-sizing: border-box;">
                </div>
                
                <div>
                    <label style="color: #666; font-size: 0.7em; text-transform: uppercase; letter-spacing: 1px; display: block; margin-bottom: 8px;">Universe Origin</label>
                    <input type="text" name="universe" required style="width: 100%; background: #111; border: 1px solid #222; padding: 12px; color: white; box-sizing: border-box;">
                </div>

                <button type="submit" style="width: 100%; background: #ff0000; color: white; padding: 15px; border: none; font-weight: bold; text-transform: uppercase; letter-spacing: 2px; cursor: pointer; margin-top: 20px;">Register Subject</button>
                
                <a href="/mvc/characters/all" style="color: #333; text-align: center; text-decoration: none; font-size: 0.7em; text-transform: uppercase; letter-spacing: 1px;">Cancel Entry</a>
            </form>
        </div>
    </div>

</body>
</html>