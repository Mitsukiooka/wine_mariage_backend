Wine.create!(
  name: 'Bread and Butter',
  kind: '白 シャルドネ',
  country: 'アメリカ カルフォルニア',
  maker: 'aaa',
  color: '白',
  body: '重い',
  aroma: 'バター',
  score: '10'
)
Wine.create!(
  name: 'Bread and Butter',
  kind: '赤 カベルネ・ソーヴィニヨン',
  country: 'アメリカ カルフォルニア',
  maker: 'aaa',
  color: '赤',
  body: '重い',
  aroma: 'ベリー系',
  score: '10'
)

Profile.create!(
  name: 'Mickey',
  favorite_kind: '白 シャルドネ 赤 カベルネ・ソーヴィニヨン',
  total_number: 0
)

Review.create!(
  wine_id: 1,
  profile_id: 1,
  content: '美味しかった。香りはシャルドネ特有の花の香り、色合いは金に近い。味はバター。カルボナーラの料理によく合う。'
)