

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