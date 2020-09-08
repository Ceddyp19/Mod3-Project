const scoresURL = "http://localhost:3000/scores"
const leaderBoard = document.querySelector('#leaderboard')

fetchScores();

function fetchScores() {
    fetch(scoresURL)
        .then(r => r.json())
        .then(renderScores)
}

function renderScores(scoreData) {
    for (const score of scoreData) {
        renderScore(score)
    }
}

function renderScore(score) {
    console.log(score.game.created_at)
    let playerStat = document.createElement('p')
    playerStat.innerHTML = `<h3>${score.player.name}</h3>
                            <span>${score.game.created_at}</span><br>
                            <span>${score.score}</span><br>
                            `

    leaderBoard.append(playerStat)
}
