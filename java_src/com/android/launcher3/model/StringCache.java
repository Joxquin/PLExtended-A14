package com.android.launcher3.model;

import android.app.admin.DevicePolicyManager;
import android.content.Context;
import com.android.launcher3.Utilities;
import com.android.systemui.shared.R;
import java.util.function.Supplier;
/* loaded from: classes.dex */
public final class StringCache {
    public String allAppsPersonalTab;
    public String allAppsPersonalTabAccessibility;
    public String allAppsWorkTab;
    public String allAppsWorkTabAccessibility;
    public String disabledByAdminMessage;
    public String widgetsPersonalTab;
    public String widgetsWorkTab;
    public String workProfileEdu;
    public String workProfileEnableButton;
    public String workProfilePauseButton;
    public String workProfilePausedDescription;
    public String workProfilePausedTitle;

    private static String getEnterpriseString(final int i4, final Context context, String str) {
        Supplier supplier = new Supplier() { // from class: com.android.launcher3.model.h1
            @Override // java.util.function.Supplier
            public final Object get() {
                return context.getString(i4);
            }
        };
        return Utilities.ATLEAST_T ? ((DevicePolicyManager) context.getSystemService(DevicePolicyManager.class)).getResources().getString(str, supplier) : (String) supplier.get();
    }

    public final void loadStrings(final Context context) {
        this.workProfileEdu = getEnterpriseString(R.string.work_profile_edu_work_apps, context, "Launcher.WORK_PROFILE_EDU");
        getEnterpriseString(R.string.work_profile_edu_accept, context, "Launcher.WORK_PROFILE_EDU_ACCEPT");
        this.workProfilePausedTitle = getEnterpriseString(R.string.work_apps_paused_title, context, "Launcher.WORK_PROFILE_PAUSED_TITLE");
        Supplier supplier = new Supplier() { // from class: com.android.launcher3.model.g1
            @Override // java.util.function.Supplier
            public final Object get() {
                StringCache stringCache = StringCache.this;
                Context context2 = context;
                stringCache.getClass();
                if (Utilities.ATLEAST_U) {
                    return ((DevicePolicyManager) context2.getSystemService(DevicePolicyManager.class)).getManagedSubscriptionsPolicy().getPolicyType() == 1 ? context2.getString(R.string.work_apps_paused_telephony_unavailable_body) : context2.getString(R.string.work_apps_paused_info_body);
                }
                return context2.getString(R.string.work_apps_paused_body);
            }
        };
        this.workProfilePausedDescription = Utilities.ATLEAST_T ? ((DevicePolicyManager) context.getSystemService(DevicePolicyManager.class)).getResources().getString("Launcher.WORK_PROFILE_PAUSED_DESCRIPTION", supplier) : (String) supplier.get();
        this.workProfilePauseButton = getEnterpriseString(R.string.work_apps_pause_btn_text, context, "Launcher.WORK_PROFILE_PAUSE_BUTTON");
        this.workProfileEnableButton = getEnterpriseString(R.string.work_apps_enable_btn_text, context, "Launcher.WORK_PROFILE_ENABLE_BUTTON");
        this.allAppsWorkTab = getEnterpriseString(R.string.all_apps_work_tab, context, "Launcher.ALL_APPS_WORK_TAB");
        this.allAppsPersonalTab = getEnterpriseString(R.string.all_apps_personal_tab, context, "Launcher.ALL_APPS_PERSONAL_TAB");
        this.allAppsWorkTabAccessibility = getEnterpriseString(R.string.all_apps_button_work_label, context, "Launcher.ALL_APPS_WORK_TAB_ACCESSIBILITY");
        this.allAppsPersonalTabAccessibility = getEnterpriseString(R.string.all_apps_button_personal_label, context, "Launcher.ALL_APPS_PERSONAL_TAB_ACCESSIBILITY");
        getEnterpriseString(R.string.work_folder_name, context, "Launcher.WORK_FOLDER_NAME");
        this.widgetsWorkTab = getEnterpriseString(R.string.widgets_full_sheet_work_tab, context, "Launcher.WIDGETS_WORK_TAB");
        this.widgetsPersonalTab = getEnterpriseString(R.string.widgets_full_sheet_personal_tab, context, "Launcher.WIDGETS_PERSONAL_TAB");
        this.disabledByAdminMessage = getEnterpriseString(R.string.msg_disabled_by_admin, context, "Launcher.DISABLED_BY_ADMIN_MESSAGE");
    }

    /* renamed from: clone */
    public final StringCache m3clone() {
        StringCache stringCache = new StringCache();
        stringCache.workProfileEdu = this.workProfileEdu;
        stringCache.workProfilePausedTitle = this.workProfilePausedTitle;
        stringCache.workProfilePausedDescription = this.workProfilePausedDescription;
        stringCache.workProfilePauseButton = this.workProfilePauseButton;
        stringCache.workProfileEnableButton = this.workProfileEnableButton;
        stringCache.allAppsWorkTab = this.allAppsWorkTab;
        stringCache.allAppsPersonalTab = this.allAppsPersonalTab;
        stringCache.allAppsWorkTabAccessibility = this.allAppsWorkTabAccessibility;
        stringCache.allAppsPersonalTabAccessibility = this.allAppsPersonalTabAccessibility;
        stringCache.widgetsWorkTab = this.widgetsWorkTab;
        stringCache.widgetsPersonalTab = this.widgetsPersonalTab;
        stringCache.disabledByAdminMessage = this.disabledByAdminMessage;
        return stringCache;
    }
}
