<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Aura Profile | ${character.name}</title>
    <link rel="stylesheet" href="/style.css">
</head>
<body style="background: #000; color: white; display: flex; justify-content: center; align-items: center; min-height: 100vh; margin: 0; font-family: sans-serif;">
    
    <div style="background: #080808; padding: 60px; border: 1px solid #1a1a1a; border-top: 4px solid #ff0000; width: 100%; max-width: 500px; text-align: center; box-shadow: 0 20px 50px rgba(0,0,0,0.5);">
        
        <h1 style="text-transform: uppercase; letter-spacing: 4px; margin: 0; font-size: 2.5em;">${character.name}</h1>
        <p style="color: #333; font-weight: bold; margin-top: 10px; font-family: monospace; letter-spacing: 2px;">SUBJECT_ID: ${character.characterId?c}</p>
        
        <hr style="border: 0; border-top: 1px solid #1a1a1a; margin: 40px 0;">

        <p style="text-transform: uppercase; font-size: 0.8em; letter-spacing: 2px; color: #666; margin-bottom: 5px;">Universe Origin</p>
        <p style="font-size: 1.2em; color: #ff0000; margin: 0; font-weight: bold;">${character.universe!"Classified"}</p>
        
        <div style="margin: 40px 0; background: #0a0a0a; padding: 30px; text-align: left; border-left: 2px solid #ff0000;">
            <strong style="color: #444; font-size: 0.7em; text-transform: uppercase; display: block; margin-bottom: 15px; letter-spacing: 1px;">Aura Analysis & Feats:</strong>
            <p style="line-height: 1.8; color: #999; margin: 0; font-size: 0.95em;">${character.description}</p>
        </div>

        <div style="margin-top: 50px; display: flex; flex-direction: column; gap: 15px; align-items: center;">
            <a href="/mvc/characters/edit/${character.characterId?c}" style="background: #fff; color: #000; padding: 15px; text-decoration: none; font-weight: bold; text-transform: uppercase; width: 100%; letter-spacing: 2px; transition: 0.3s;">Modify Subject</a>
            
            <a href="/mvc/characters/all" style="color: #444; text-decoration: none; font-size: 0.8em; text-transform: uppercase; letter-spacing: 1px; margin-top: 10px;">Return to Vault</a>
            
            <a href="/mvc/characters/delete/${character.characterId?c}" style="color: #222; font-size: 0.7em; text-decoration: none; margin-top: 30px; text-transform: uppercase;">Destroy Data Record</a>
        </div>
    </div>

</body>
</html>