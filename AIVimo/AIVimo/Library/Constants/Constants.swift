//
//  Constants.swift
//  Steve
//
//  Created by Sudhir Kumar on 04/06/18.
//  Copyright © 2018 Appster. All rights reserved.
//

import Foundation
import UIKit

// -----Global Objects
let kAppDelegate = UIApplication.shared.delegate as! AppDelegate
//let LOCATION_MANAGER = CoreLocationManager.sharedInstance

// -----Base Url
var KAPIBaseUrl = "" // ConfigurationManager.sharedManager().applicationEndPoint()

//let kSTRIPE_KEY = "pk_test_eX6TlWM3q9HPKbP2cg1ogrOR"
//let kSTRIPE_SECRET = "sk_test_4kUpt569pzw02JFXiQp0fNDB"
let ACCEPTABLE_CHARACTERS = " ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"

let kGoogleKey = "AIzaSyC8CixHKMVjdX2Ex2WryxOfDxkCeo8jkts"
let kFacebookAppID = "1687429601332691"

// MARK: UserDefault Keys
struct UserDefault {
    static let DeviceToken: String = "device_token"
}

typealias ClosureType = () -> Void

// MARK: UserDefault Keys
struct AppStatus {
    static let isLoginDone: String = "isLoginDone"
    static let isLinkedinLoginDone: String = "isLinkedinLoginDone"
    static let isWalkThroughDone: String = "isWalkThroughDone"
    
}

// MARK: APIServices
struct APIServices {
    static let termsAndConditons = APIServices.apiURL("termsView")
    static let privacyPolicy = APIServices.apiURL("privacyView")
    static let aboutUs = APIServices.apiURL("")
    
    static let loginAPI = APIServices.apiURL("login")
    static let updateStripeId = APIServices.apiURL("updateStripeId")
    
    static let socialLoginAPI = APIServices.apiURL("fbLogin")
    static let socialSigupAPI = APIServices.apiURL("fbSignup")
    static let sigupAPI = APIServices.apiURL("registerUser")
    static let forgotPasswordAPI = APIServices.apiURL("forgetPasswordMail")
    static let resendVerification = APIServices.apiURL("resendVerificationEmail")
    
    
    // ************* Sudhir *********************
    static let createProfile = APIServices.apiURL("saveUserProfile")
    static let uploadDocument = APIServices.apiURL("uploadDocument")///getDocumentList
    static let getDocumentList = APIServices.apiURL("getDocumentList");
    //static let getDocuments = APIServices.apiURL("getDocumentList");

    static let deleteDocument = APIServices.apiURL("deleteDocument");

    static let categoryList = APIServices.apiURL("categoryList")
    static let getJobs = APIServices.apiURL("getJobs")//getDirectJobs
    static let getDirectJobs = APIServices.apiURL("getDirectJobs")
    static let getDirectJobsCount = APIServices.apiURL("getTotalDirectJobs")

    static let getJobDetails = APIServices.apiURL("getJob")
    static let applyJob = APIServices.apiURL("applyJob")
    static let getMyJobs = APIServices.apiURL("getMyJobs")
    static let cancelJob = APIServices.apiURL("cancelJob")
    static let changeStatus = APIServices.apiURL("changeStatus")
    static let changePassword = APIServices.apiURL("changePassword")
    static let showUserProfile = APIServices.apiURL("showUserProfile")
    static let contactInfo = APIServices.apiURL("contactAdmin")
    static let changeAvailability = APIServices.apiURL("changeAvailability")
    static let notificationList = APIServices.apiURL("notificationList")
    static let logout = APIServices.apiURL("logout")
    static let updateTocken = APIServices.apiURL("updateDeviceToken")
    static let workHistoryRequest = APIServices.apiURL("workHistoryRequest")
    static let searchEmployer = APIServices.apiURL("searchEmployer")
    static let updatePaymentInfoUrl = APIServices.apiURL("bankAccount")

    
    static func apiURL(_ methodName: String) -> String {
        let BASE_URL = "AppConfiguration.shared.activeConfiguration.apiEndPoint"
        return BASE_URL + methodName
    }
}

// MARK: Alert Messages
struct Alert {
}

// MARK: NotificationType
struct NotificationType {
    static let CHAT_MESSAGE: Int = 101
    static let ACCEPT_NOTIFICATION: Int = 1
    static let REJECTED_NOTIFICATION: Int = 2
    static let OFFLINE_CHAT_NOTIFICATION: Int = 3
    static let USER_BLOCK: Int = 4
    static let REQUEST_RECEIVED: Int = 5
    
}

// MARK: Fonts
struct Font {
    static let MontserratBold = "Montserrat-Bold"
    static let MontserratLight = "Montserrat-Light"
    static let MontserratMedium = "Montserrat-Medium"
    static let MontserratRegular = "Montserrat-Regular"
    static let MontserratSemiBold = "Montserrat-SemiBold"
    
}

// MARK: Color
struct Color {
    static let redColor: UIColor = UIColor(red: 255 / 255.0, green: 115 / 255.0, blue: 120 / 255.0, alpha: 1.0)
}

struct Notification_Title {
    static let Calendar_Updated_Dates = "calendarDates"
}

struct Date_Formate {
    
    static let DateFormate_DDMMYYYY: String = "dd/MM/yyyy"
    static let Server_DateFormate_YYYYMMDD: String = "yyyy-MM-dd"
}






// MARK: KeysText
struct KeysText {
    static let category = "category"
    static let subCategory = "subCategory"
}

// MARK: Tabbar type
struct TabbarType {
    static let Professional: String = "Professional"
    static let Proposal: String = "Proposal"
    static let Chat: String = "Chat"
    static let Notification: String = "Notification"
    static let Profile: String = "Profile"
}

// MARK: Tabbar index
struct TabIndex {
    static let Professional = 0
    static let Proposal = 1
    static let Chat = 2
    static let Notification = 3
    static let Profile = 4
    
}

// MARK: ServerKey
struct ServerKey {
    static let accessToken: String = "accessToken"
    static let statusCode: String = "statusCode"
    static let message: String = "message"
    static let success: String = "success"
    static let result: String = "result"
    static let userImage: String = "user_image"
}

struct MultiPartKey {
    /// API key's
    static let kFileNameKey = "fileName"
   static let kSourceKey = "key"
    static let kContentTypeKey = "contentType"
    static let kmimeTypeKey = "mimeType"

   static  let kValueKey = "value"
   static  let kName = "name"
    static let kEmail = "email"
    let kFacebookID = "fbId"
    let kProfileImageKey = "profile_image"
    let kPassword = "password"
    let kPage = "page"
    let kContentImageType   = "image/jpeg"
    let kContentVideoType = "video/mov"
    let kRequestVideoName = "Uploadvideo.mov"
    let kDeviceTypeKey = "deviceType"
    let kIsCommentKey = "isComment"
    let kRequestIdKey = "requestId"
}

// MARK: ErrorCode
struct ServerResponseCode {
    static let APIError = 99
    static let UserNotLoggedIn = 401
    static let success = 1
}



struct ScreenSize {
    static let SCREEN_WIDTH = UIScreen.main.bounds.size.width
    static let SCREEN_HEIGHT = UIScreen.main.bounds.size.height
}

struct CustomColor {
    static let onBoardingPage1IndicatorColor = UIColor().colorWithRedValue(56, greenValue: 158, blueValue: 216, alpha: 1.0)
    static let onBoardingPage2IndicatorColor = UIColor().colorWithRedValue(123, greenValue: 193, blueValue: 24, alpha: 1.0)
    static let onBoardingPage3IndicatorColor = UIColor().colorWithRedValue(255, greenValue: 181, blueValue: 4, alpha: 1.0)
    static let customTextFieldTextColor = UIColor().colorWithRedValue(51, greenValue: 51, blueValue: 51, alpha: 1.0)
    static let customTextFieldErrorColor = UIColor().colorWithRedValue(237, greenValue: 115, blueValue: 104, alpha: 1.0)
    static let customTextFieldBackgroundColor = UIColor().colorWithRedValue(255, greenValue: 255, blueValue: 255, alpha: 0.35)
    static let forgotPasswordTextFieldBackgroundColor = UIColor().colorWithRedValue(227, greenValue: 231, blueValue: 235, alpha: 0.27)
    
    
    static let red = UIColor().colorWithRedValue(255, greenValue: 115, blueValue: 120, alpha: 1.0)
    static let shadowRed = UIColor().colorWithRedValue(255, greenValue: 115, blueValue: 120, alpha: 0.56)
    static let backgroundGreen = UIColor().colorWithRedValue(46, greenValue: 204, blueValue: 113, alpha: 1.0)
    static let backgroundGray = UIColor().colorWithRedValue(246, greenValue: 248, blueValue: 248, alpha: 1.0)
    static let shadowBlack = UIColor().colorWithRedValue(218, greenValue: 225, blueValue: 225, alpha: 1.0)
    static let shadowlightGray = UIColor().colorWithRedValue(234, greenValue: 234, blueValue: 234, alpha: 0.5)
    static let shadowSearchTextField = UIColor().colorWithRedValue(231, greenValue: 233, blueValue: 233, alpha: 0.5)
    
    static let borderGrey = UIColor().colorWithRedValue(193, greenValue: 199, blueValue: 199, alpha: 1.0)
    static let underlineColor = UIColor().colorWithRedValue(122, greenValue: 130, blueValue: 130, alpha: 1.0)
    static let paymentEnableColor = UIColor().colorWithRedValue(0, greenValue: 126, blueValue: 168, alpha: 1.0)
    static let paymentDisableColor = UIColor().colorWithRedValue(128, greenValue: 170, blueValue: 184, alpha: 1.0)
    static let topViewColor = UIColor().colorWithRedValue(0, greenValue: 126, blueValue: 168, alpha: 1.0)
    
    // **************** Sudhir **********************
    static let profileSelectedTextColor = UIColor().colorWithRedValue(51, greenValue: 51, blueValue: 51, alpha: 1.0)
    static let profileUnselectedTextColor = UIColor().colorWithRedValue(213, greenValue: 213, blueValue: 231, alpha: 1.0)
    static let profileShadowColor = UIColor().colorWithRedValue(0, greenValue: 0, blueValue: 0, alpha: 0.07)
    static let preferenceSelectionColor = UIColor().colorWithRedValue( 58, greenValue: 164, blueValue: 221, alpha: 1.0)
    static let profileTextFieldBackgroundColor =  UIColor().colorWithRedValue( 248, greenValue: 249, blueValue: 250, alpha: 1.0)
    static let shadowTabView = UIColor().colorWithRedValue(0, greenValue: 0, blueValue: 0, alpha: 0.15)
    static let buttonGreenColor = UIColor().colorWithRedValue(89, greenValue: 194, blueValue: 3, alpha: 1.0)
    static let buttonGreyColor = UIColor().colorWithRedValue(187, greenValue: 188, blueValue: 205, alpha: 1.0)
    static let FloatingLabelTextColor = UIColor().colorWithRedValue(173, greenValue: 175, blueValue: 210, alpha: 1.0)
    static let labelDarkTextColor = UIColor().colorWithRedValue(80, greenValue: 80, blueValue: 80, alpha: 0.5)
    static let labelDarkTextColorNoAlpha = UIColor().colorWithRedValue(80, greenValue: 80, blueValue: 80, alpha: 1.0)
    static let alertShadowColor = UIColor().colorWithRedValue(0, greenValue: 0, blueValue: 0, alpha: 0.22)
    static let tabSelectedColor = UIColor().colorWithRedValue(30, greenValue: 30, blueValue: 30, alpha: 1.0)
    static let tabDefaultColor = UIColor().colorWithRedValue(30, greenValue: 30, blueValue: 30, alpha: 0.6)
    static let overlayColor = UIColor().colorWithRedValue(200, greenValue: 216, blueValue: 224, alpha: 0.6)
    static let buttonDisableColor = UIColor().colorWithRedValue(231, greenValue: 231, blueValue: 240, alpha: 1.0)
    static let headerBackgroundColor = UIColor().colorWithRedValue(255, greenValue: 255, blueValue: 255, alpha: 0.01)
    
}

enum ViewIdentifier: String {
    //    case toastView = "ToastView"
    //    case alertView = "AlertView"
    //    case onboarding = "OnboardingView"
    //    case basePopup = "BasePopupView"
    //    case textPopup = "TextPopupView"
    //    case settingHeader = "SettingHeaderView"
    //    case passwordPopup = "PasswordPopupView"
    //    case fullImageView = "FullImageView"
    //    case selectAddressView = "SelectAddressView"
    //    case imageCollection = "ImageCollectionView"
    //    case customListView = "CustomListView"
    //    case productDetailListView = "ProductDetailListView"
    //    case reviewBooking = "ReviewBookingView"
    //    case ConfirmTimeView = "ConfirmTimeView"
    
    case topView = "TopBarView"
    case profileCollection = "ProgressProfileBar"
    case customTextView = "CustomTextView"
    case preferencesSection = "PreferencesSection"
    case jobDetailHeader = "JobDetailHeader"
    case workHistoryView = "WorkHistoryView"
    
    var value: String {
        return self.rawValue
    }
}

enum CellIdentifier: String {
    case profileColCell = "ProfileCollectionCell"
    case preferenceCell = "PreferenceCell"
    case jobCell = "JobCell"
    case jobFirstCell = "JobFirstCell"
    case contactCell = "ContactCell"
    case workCell = "WorkCell"
    
    var value: String {
        return self.rawValue
    }
}

struct MaxValidationCount {
    static let fullNameMaxCount = 20
}

struct ValidationMessages {
    static let emptyFullName = "STEVE needs a name!"
    static let emptyEmailId = "STEVE needs an Email ID."
    static let emptyPassword = "Please enter a password."
    static let invalidEmailId = "Oops! Please enter a valid email."
    static let invalidPassword = "To be safe, the password must be at least 8 characters."
    static let signUpSuccess = "Verification link has been sent to your email id. Click the link for signing into the app."
    static let underAge = "Please enter a valid age."//"Age must be greater than or equal to 18."
    static let mobileNotValid = "Your mobile number must have 9 or more digits."
    static let bioOrYoutubeRequire = "STEVE needs either Youtube link or Short Bio."
    static let validYoutubeLink = "Please enter a valid youtube Url."
    static let categoryMessage = "Please select at least one job."
    static let validName = "Please enter valid name."
    static let addressNotFound = "Unable to find address."
    static let confirmPassword = "The two passwords need to match."
    static let oldPasswordValidation = "Your new password can’t be same as your old one."
    static let AllFieldMandatory = "All fields are required."
    static let AccountFieldMandatory = "Please update your account details first."

}

// ********************** Sudhir ****************************
// MARK: - Notification name
enum NotificationName: String {
    case moveNext = "MOVE_NEXT"
    case getLocation = "GET_LOCATION"
    case refreshUserDetail = "REFRESH_USER_DETAIL"
    case badgeCount = "BADGE_COUNT"
    case radiusChange = "RADIUS_UPDATED"
    case newNotification = "NEW_NOTIFICATION_ARRIVED"
    case refreshData = "REFRESH_DATA"
    case resetNewData = "RESET_DATA"
    case resetHistory = "RESET_HISTORY"
    case resetNotification = "RESET_NOTIFICATION"
    case appendUserHistory = "HISTORY_REFRESH"
    
    var value: String {
        return self.rawValue
    }
}

struct NavTitle {
    static let locationPermission = "Location Permission"
    static let jobDetails = "Job Details"
    static let myProfile = "My Profile"
    static let settings = "Settings"
    static let editCategory = "Edit Category"
    static let categories = "Category"
    static let Identity_Documents = "Identity Documents" //Identity Documents
    static let View_Documents = "Photo" //Identity Documents
    static let View_PDF = "PDF" 

    static let changePassword = "Change Password"
    static let notifications = "Notifications"
    static let payment = "Payment Information"
    static let workHistory = "Work History"
    static let directJob = "Jobs Employers Offered"

}
