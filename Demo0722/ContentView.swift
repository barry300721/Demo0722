//
//  ContentView.swift
//  Demo2
//
//  Created by SHIH-YING PAN on 2025/3/7.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            // 背景漸層
            Rectangle()
                .foregroundStyle(
                    LinearGradient(colors: [Color.white, Color.blue], startPoint: .top, endPoint: .bottom))
                .ignoresSafeArea()
            
            // 太陽漸層
            Circle()
                .foregroundStyle(LinearGradient(colors: [Color.yellow, Color.orange], startPoint: .top, endPoint: .bottom))
                .frame(width: 90, height: 100)
                .offset(x: 160, y: -370)

            // 白雲雲朵
            Ellipse()
                .foregroundStyle(.white)
                .frame(width: 85, height: 32)
                .offset(x: -80, y: -320)
            Ellipse()
                .foregroundStyle(.white.opacity(0.85))
                .frame(width: 56, height: 21)
                .offset(x: -50, y: -323)
            Ellipse()
                .foregroundStyle(.white)
                .frame(width: 60, height: 24)
                .offset(x: 100, y: -340)
            Ellipse()
                .foregroundStyle(.white.opacity(0.85))
                .frame(width: 38, height: 14)
                .offset(x: 130, y: -336)

            // 背景山丘
            Ellipse()
                .foregroundStyle(Color.green.opacity(0.3))
                .frame(width: 300, height: 100)
                .offset(x: 60, y: 120)
            Ellipse()
                .foregroundStyle(Color.green.opacity(0.2))
                .frame(width: 200, height: 120)
                .offset(x: -120, y: 120)
            // 地面沙灘
            RoundedRectangle(cornerRadius: 50)
                .frame(width: 500, height: 300)
                .foregroundStyle(
                    LinearGradient(colors: [Color(red: 0.98, green: 0.92, blue: 0.73), Color(red: 0.93, green: 0.80, blue: 0.47)], startPoint: .top, endPoint: .bottom)
                )
                .offset(y: 300)
            
            // 雜草
            ZStack {
                // 第一叢  Left
                Capsule()
                    .foregroundStyle(.green)
                    .frame(width: 8, height: 38)
                    .rotationEffect(.degrees(-20))
                    .offset(x: -120, y: 300)
                Capsule()
                    .foregroundStyle(.green)
                    .frame(width: 6, height: 30)
                    .rotationEffect(.degrees(30))
                    .offset(x: -110, y: 305)
                Capsule()
                    .foregroundStyle(.mint)
                    .frame(width: 4, height: 25)
                    .rotationEffect(.degrees(10))
                    .offset(x: -114, y: 300)
                // 第二叢    Right
                Capsule()
                    .foregroundStyle(.green)
                    .frame(width: 7, height: 35)
                    .rotationEffect(.degrees(20))
                    .offset(x: 90, y: 350)
                Capsule()
                    .foregroundStyle(.mint)
                    .frame(width: 5, height: 30)
                    .rotationEffect(.degrees(-20))
                    .offset(x: 75, y: 350)
                Capsule()
                    .foregroundStyle(.mint)
                    .frame(width: 5, height: 24)
                    .rotationEffect(.degrees(-25))
                    .offset(x: 70, y: 352)
                Capsule()
                    .foregroundStyle(.mint)
                    .frame(width: 5, height: 24)
                    .rotationEffect(.degrees(-12))
                    .offset(x: 82, y: 350)
            }

            // 貝殼與石頭（點綴）
            Ellipse()
                .foregroundStyle(.pink.opacity(0.9))
                .frame(width: 20, height: 13)
                .offset(x: 120, y: 320)
            Ellipse()
                .foregroundStyle(.gray.opacity(0.8))
                .frame(width: 12, height: 10)
                .offset(x: 35, y: 315)
            Ellipse()
                .foregroundStyle(.purple.opacity(0.5))
                .frame(width: 16, height: 10)
                .offset(x: -120, y: 330)
            Ellipse()
                .foregroundStyle(.yellow.opacity(0.7))
                .frame(width: 16, height: 12)
                .offset(x: -20, y: 335)
            Ellipse()
                .foregroundStyle(.brown.opacity(0.7))
                .frame(width: 16, height: 12)
                .offset(x: 170, y: 220)


            // 竹子

            // 第一根竹子
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundStyle(LinearGradient(colors: [.green, .mint], startPoint: .top, endPoint: .bottom))
                    .frame(width: 22, height: 390)
                    .offset(x: -120, y: -35)
                // 竹節
                ForEach(0..<5) { i in
                    Capsule()
                        .foregroundStyle(Color.green.opacity(0.85))
                        .frame(width: 28, height: 8)
                        .offset(x: -120, y: CGFloat(-150 + i * 80))
                }
                // 葉子
                Ellipse()
                    .foregroundStyle(.green)
                    .frame(width: 38, height: 15)
                    .offset(x: -120, y: -230)
                Ellipse()
                    .foregroundStyle(.mint)
                    .frame(width: 28, height: 10)
                    .rotationEffect(.degrees(-25))
                    .offset(x: -100, y: -245)
            }

            // 第二根竹子
            ZStack {
                Capsule()
                    .foregroundStyle(Color.green.opacity(0.85))
                    .frame(width: 23, height: 7)
                    .offset(x: -55, y: -100)
                Capsule()
                    .foregroundStyle(Color.green.opacity(0.85))
                    .frame(width: 23, height: 7)
                    .offset(x: -55, y: -20)
                Capsule()
                    .foregroundStyle(Color.green.opacity(0.85))
                    .frame(width: 23, height: 7)
                    .offset(x: -55, y: 60)
                Capsule()
                    .foregroundStyle(Color.green.opacity(0.85))
                    .frame(width: 23, height: 7)
                    .offset(x: -55, y: 140)
                
                // 葉子
                Ellipse()
                    .foregroundStyle(.green)
                    .frame(width: 32, height: 10)
                    .offset(x: -55, y: -145)
                Ellipse()
                    .foregroundStyle(.mint)
                    .frame(width: 22, height: 8)
                    .rotationEffect(.degrees(-18))
                    .offset(x: -41, y: -155)
            }

            // 第三根竹子
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundStyle(LinearGradient(colors: [.green, .mint], startPoint: .top, endPoint: .bottom))
                    .frame(width: 25, height: 470)
                    .offset(x: 90, y: -80)
                // 竹節
                ForEach(0..<6) { i in
                    Capsule()
                        .foregroundStyle(Color.green.opacity(0.85))
                        .frame(width: 31, height: 8)
                        .offset(x: 90, y: CGFloat(-200 + i * 90))
                }
                // 葉子
                Ellipse()
                    .foregroundStyle(.green)
                    .frame(width: 41, height: 13)
                    .offset(x: 105, y: -305)
                Ellipse()
                    .foregroundStyle(.mint)
                    .frame(width: 33, height: 9)
                    .rotationEffect(.degrees(18))
                    .offset(x: 120, y: -300)
            }

            // 身體
            Ellipse()
                .foregroundStyle(.white)
                .frame(width: 280, height: 260)
                .offset(y: 160)

            // 左手

            Capsule()
                .frame(width: 70, height: 120)
                .rotationEffect(.degrees(-55))
                .offset(x: -110, y: 40)
            // 右手

            Capsule()
                .frame(width: 70, height: 120)
                .rotationEffect(.degrees(55))
                .offset(x: 110, y: 40)
            // 左耳朵
            Ellipse()
                .foregroundStyle(.black)
                .frame(width: 50, height: 70)
                .offset(x: -70, y: -130)
                .rotationEffect(.degrees(-20))
            // 右耳朵
            Ellipse()
                .foregroundStyle(.black)
                .frame(width: 50, height: 70)
                .offset(x: 70, y: -130)
                .rotationEffect(.degrees(20))
            //圍巾
            RoundedRectangle(cornerRadius: 40)
                .frame(width: 160, height: 100)
                .foregroundStyle(.black)
                .offset(x: 10, y:80)
                .rotationEffect(.degrees(30))
            RoundedRectangle(cornerRadius: 40)
                .frame(width: 160, height: 100)
                .foregroundStyle(.black)
                .offset(x: -10, y:80)
                .rotationEffect(.degrees(-30))
            // 臉
            Ellipse()
                .foregroundStyle(.white)
                .frame(width: 210, height: 190)
                .offset(y: -40)
                .shadow(radius: 20)


            // 左眼圈
            Ellipse()
                .foregroundStyle(.black)
                .frame(width: 38, height: 58)
                .rotationEffect(.degrees(20))
                .offset(x: -40, y: -50)
            // 右眼圈
            Ellipse()
                .foregroundStyle(.black)
                .frame(width: 38, height: 58)
                .rotationEffect(.degrees(-20))
                .offset(x: 40, y: -50)

            // 左眼珠
            Circle()
                .foregroundStyle(.white)
                .frame(width: 15, height: 15)
                .offset(x: -40, y: -55)
            // 右眼珠
            Circle()
                .foregroundStyle(.white)
                .frame(width: 15, height: 15)
                .offset(x: 40, y: -55)
            // 左瞳孔
            Circle()
                .foregroundStyle(.black)
                .frame(width: 7, height: 7)
                .offset(x: -40, y: -55)
            // 右瞳孔
            Circle()
                .foregroundStyle(.black)
                .frame(width: 7, height: 7)
                .offset(x: 40, y: -55)

            // 鼻子
            Capsule()
                .foregroundStyle(.black)
                .frame(width: 32, height: 18)
                .offset(y: -25)

            // 嘴巴
            Capsule()
                .foregroundStyle(.black)
                .frame(width: 5, height: 30)
                .offset(y: 0)
            Capsule()
                .foregroundStyle(.black)
                .frame(width: 20, height: 5)
                .offset(x: -15, y: 10)
                .rotationEffect(.degrees(-30))
            Capsule()
                .foregroundStyle(.black)
                .frame(width: 20, height: 5)
                .offset(x: 15, y: 10)
                .rotationEffect(.degrees(30))
            //臉頰
            Circle()
                .fill(Color.pink)
                .frame(width: 15)
                .offset(x: -60, y: -10)

            Circle()
                .fill(Color.pink)
                .frame(width: 15)
                .offset(x: 60, y: -10)
            // 左腳
            Ellipse()
                .foregroundStyle(.black)
                .frame(width: 60, height: 90)
                .offset(x: -50, y: 270)
            // 右腳
            Ellipse()
                .foregroundStyle(.black)
                .frame(width: 60, height: 90)
                .offset(x: 50, y: 270)
            // 左腳蹼
            Ellipse()
                .foregroundStyle(.white)
                .frame(width: 15, height: 15)
                .offset(x: -70, y: 255)
            Ellipse()
                .foregroundStyle(.white)
                .frame(width: 15, height: 15)
                .offset(x: -50, y: 245)
            Ellipse()
                .foregroundStyle(.white)
                .frame(width: 15 , height: 15)
                .offset(x: -30, y: 255)
            Ellipse()
                .foregroundStyle(.white)
                .frame(width: 35 , height: 40)
                .offset(x: -50, y: 280)

            // 右腳蹼
            Ellipse()
                .foregroundStyle(.white)
                .frame(width: 15, height: 15)
                .offset(x: 30, y: 255)
            Ellipse()
                .foregroundStyle(.white)
                .frame(width: 15, height: 15)
                .offset(x: 50, y: 245)
            Ellipse()
                .foregroundStyle(.white)
                .frame(width: 15, height: 15)
                .offset(x: 70, y: 255)
            Ellipse()
                .foregroundStyle(.white)
                .frame(width: 35 , height: 40)
                .offset(x: 50, y: 280)
        }
    }
}
        
#Preview{
    ContentView()
}
