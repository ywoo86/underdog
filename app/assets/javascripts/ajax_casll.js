
  // $.ajax({
  //   method:'GET',
  //   url:'http://api.sportradar.us/nfl-ot1/games/2016/REG/schedule.json?api_key=76ccra8yhxgee2tyg7p4fqhb',
  //   success: function(data)
  //   {
  //     var s_data = data;
  //     var the_data = [];
  //     console.log(s_data)

  //     s_data.weeks.forEach(function(week)
  //     {
  //       week.games.forEach(function(game)
  //       {
  //         var away_team = game.away.name;
  //         var home_team = game.home.name;
  //         var week_number = week.title;
  //         var string_thing = $('<div>'+"week: "+ week_number+ " home_team: "+home_team+" away_team: "+away_team+'</div>');
  //          $('body').append(string_thing);
  //         the_data.push({week: week_number, home_team: home_team, away_team: away_team})
  //       })

  //     })

  //     console.log(the_data)
  //     var page_data = $('<div>'+toString(the_data)+'</div>')

  //     $('body').append(page_data);


  //     // debugger
  //   }
  // })
