package com.bean;

public class order_temp {
          String type,sub,comm,sp_name,su_name;
          public String getSp_name() {
			return sp_name;
		}
		public void setSp_name(String sp_name) {
			this.sp_name = sp_name;
		}
		public String getSu_name() {
			return su_name;
		}
		public void setSu_name(String su_name) {
			this.su_name = su_name;
		}
		public String getType() {
			return type;
		}
		public void setType(String type) {
			this.type = type;
		}
		public String getSub() {
			return sub;
		}
		public void setSub(String sub) {
			this.sub = sub;
		}
		public String getComm() {
			return comm;
		}
		public void setComm(String comm) {
			this.comm = comm;
		}
		public int getOrder_id() {
			return order_id;
		}
		public void setOrder_id(int order_id) {
			this.order_id = order_id;
		}
		public int getSp_id() {
			return sp_id;
		}
		public void setSp_id(int sp_id) {
			this.sp_id = sp_id;
		}
		public int getSu_id() {
			return su_id;
		}
		public void setSu_id(int su_id) {
			this.su_id = su_id;
		}
		int order_id,sp_id,su_id;
}
