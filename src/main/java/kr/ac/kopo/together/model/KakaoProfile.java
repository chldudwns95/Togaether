package kr.ac.kopo.together.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties(ignoreUnknown = true)
public class KakaoProfile {

	public Integer id;
	public String connected_at;
	public Properties properties;
	public KakaoAccount kakao_account;
	
	
	public Integer getId() {
		return id;
	}


	public void setId(Integer id) {
		this.id = id;
	}


	public String getConnected_at() {
		return connected_at;
	}


	public void setConnected_at(String connected_at) {
		this.connected_at = connected_at;
	}


	public Properties getProperties() {
		return properties;
	}


	public void setProperties(Properties properties) {
		this.properties = properties;
	}


	public KakaoAccount getKakao_account() {
		return kakao_account;
	}


	public void setKakao_account(KakaoAccount kakao_account) {
		this.kakao_account = kakao_account;
	}


	public class KakaoAccount {
		public boolean profile_needs_agreement;
		public Profile profile;
		
		public Boolean has_email;
		public Boolean email_needs_agreement;
		public Boolean is_email_valid;
		public Boolean is_email_verified;
		public String email; // 이거
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		
		public boolean getProfile_needs_agreement() {
			return this.profile_needs_agreement;
		}
		
		public void setProfile_needs_agreement(boolean profile_needs_agreement) {
			this.profile_needs_agreement = profile_needs_agreement;
		}
		
		public Profile getProfile() {
			return this.profile;
		}
		
		public void setProfile(Profile profile) {
			this.profile = profile;
		}
		

		public class Profile {
			public String nickname;
			public String thumbnail_image_url;
			public String profile_image_url;
			public boolean is_default_image;
		}
		
	}
	
	
	
	public class Properties {
		private String nickname;
		
		public String getNickname() {
			return this.nickname;
		}
		
		public void setNickname(String nickname) {
			this.nickname = nickname;
		}
	}
}