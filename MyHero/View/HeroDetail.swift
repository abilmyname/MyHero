//
//  HeroDetail.swift
//  MyHero
//
//  Created by SLYTH on 08/04/21.
//

import SwiftUI

struct HeroDetail: View {
  var hero: Hero
    var body: some View {
      ScrollView{
        VStack{
          Spacer(minLength: 50)
          Text(hero.name)
            .font(.system(size: 25))
            .bold()
            .kerning(1)
          Spacer(minLength: 50)
          Image(hero.photo)
            .resizable()
            .scaledToFit()
            .frame(width: 160, height: 240, alignment: .center)
            .cornerRadius(30)
          Spacer(minLength: 50)
          Text(hero.description)
            .font(.system(size: 17))
            .multilineTextAlignment(.center)
            .background(Color.gray)
            .cornerRadius(20)
        }
      }.padding(EdgeInsets(top: 0, leading: 16, bottom: 16, trailing: 16))
    }
}

struct HeroDetail_Previews: PreviewProvider {
    static var previews: some View {
        HeroDetail(hero: heroes[0])
    }
}
