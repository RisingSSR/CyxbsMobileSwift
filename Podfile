source 'https://mirrors.tuna.tsinghua.edu.cn/git/CocoaPods/Specs.git'

platform :ios, '11.0'
use_frameworks!

install! 'cocoapods', :disable_input_output_paths => true
inhibit_all_warnings!

target 'CyxbsMobileSwift' do
  inherit! :search_paths

  pod 'WCDB.swift'

  pod 'Alamofire'
  pod 'SwiftyJSON'
  pod 'RxSwift'
  pod 'RxCocoa'
  pod 'SnapKit'
  pod 'SwiftySwift'

  target 'CyxbsMobileSwiftTests' do
    inherit! :search_paths
  end

  target 'CyxbsMobileSwiftUITests' do
  end

end

post_install do |installer|
    installer.pods_project.build_configurations.each do |config|
        config.build_settings['ONLY_ACTIVE_ARCH'] = 'NO'
        config.build_settings['HEADER_SEARCH_PATHS'] = '$(PROJECT_DIR)/**'
        config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '11.0'
        config.build_settings['EXPANDED_CODE_SIGN_IDENTITY'] = ""
        config.build_settings['CODE_SIGNING_REQUIRED'] = "NO"
        config.build_settings['CODE_SIGNING_ALLOWED'] = "NO"
    end
end