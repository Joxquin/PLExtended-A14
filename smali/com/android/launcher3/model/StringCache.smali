.class public final Lcom/android/launcher3/model/StringCache;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public allAppsPersonalTab:Ljava/lang/String;

.field public allAppsPersonalTabAccessibility:Ljava/lang/String;

.field public allAppsWorkTab:Ljava/lang/String;

.field public allAppsWorkTabAccessibility:Ljava/lang/String;

.field public disabledByAdminMessage:Ljava/lang/String;

.field public widgetsPersonalTab:Ljava/lang/String;

.field public widgetsWorkTab:Ljava/lang/String;

.field public workProfileEdu:Ljava/lang/String;

.field public workProfileEnableButton:Ljava/lang/String;

.field public workProfilePauseButton:Ljava/lang/String;

.field public workProfilePausedDescription:Ljava/lang/String;

.field public workProfilePausedTitle:Ljava/lang/String;


# direct methods
.method private static getEnterpriseString(ILandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/android/launcher3/model/h1;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/model/h1;-><init>(ILandroid/content/Context;)V

    sget-boolean p0, Lcom/android/launcher3/Utilities;->ATLEAST_T:Z

    if-eqz p0, :cond_0

    const-class p0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object p0

    invoke-virtual {p0, p2, v0}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher3/model/h1;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final clone()Lcom/android/launcher3/model/StringCache;
    .locals 2

    .line 2
    new-instance v0, Lcom/android/launcher3/model/StringCache;

    invoke-direct {v0}, Lcom/android/launcher3/model/StringCache;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/android/launcher3/model/StringCache;->workProfileEdu:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/launcher3/model/StringCache;->workProfileEdu:Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lcom/android/launcher3/model/StringCache;->workProfilePausedTitle:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/launcher3/model/StringCache;->workProfilePausedTitle:Ljava/lang/String;

    .line 5
    iget-object v1, p0, Lcom/android/launcher3/model/StringCache;->workProfilePausedDescription:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/launcher3/model/StringCache;->workProfilePausedDescription:Ljava/lang/String;

    .line 6
    iget-object v1, p0, Lcom/android/launcher3/model/StringCache;->workProfilePauseButton:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/launcher3/model/StringCache;->workProfilePauseButton:Ljava/lang/String;

    .line 7
    iget-object v1, p0, Lcom/android/launcher3/model/StringCache;->workProfileEnableButton:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/launcher3/model/StringCache;->workProfileEnableButton:Ljava/lang/String;

    .line 8
    iget-object v1, p0, Lcom/android/launcher3/model/StringCache;->allAppsWorkTab:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/launcher3/model/StringCache;->allAppsWorkTab:Ljava/lang/String;

    .line 9
    iget-object v1, p0, Lcom/android/launcher3/model/StringCache;->allAppsPersonalTab:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/launcher3/model/StringCache;->allAppsPersonalTab:Ljava/lang/String;

    .line 10
    iget-object v1, p0, Lcom/android/launcher3/model/StringCache;->allAppsWorkTabAccessibility:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/launcher3/model/StringCache;->allAppsWorkTabAccessibility:Ljava/lang/String;

    .line 11
    iget-object v1, p0, Lcom/android/launcher3/model/StringCache;->allAppsPersonalTabAccessibility:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/launcher3/model/StringCache;->allAppsPersonalTabAccessibility:Ljava/lang/String;

    .line 12
    iget-object v1, p0, Lcom/android/launcher3/model/StringCache;->widgetsWorkTab:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/launcher3/model/StringCache;->widgetsWorkTab:Ljava/lang/String;

    .line 13
    iget-object v1, p0, Lcom/android/launcher3/model/StringCache;->widgetsPersonalTab:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/launcher3/model/StringCache;->widgetsPersonalTab:Ljava/lang/String;

    .line 14
    iget-object p0, p0, Lcom/android/launcher3/model/StringCache;->disabledByAdminMessage:Ljava/lang/String;

    iput-object p0, v0, Lcom/android/launcher3/model/StringCache;->disabledByAdminMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/launcher3/model/StringCache;->clone()Lcom/android/launcher3/model/StringCache;

    move-result-object p0

    return-object p0
.end method

.method public final loadStrings(Landroid/content/Context;)V
    .locals 3

    const-string v0, "Launcher.WORK_PROFILE_EDU"

    const v1, 0x7f130272

    invoke-static {v1, p1, v0}, Lcom/android/launcher3/model/StringCache;->getEnterpriseString(ILandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/StringCache;->workProfileEdu:Ljava/lang/String;

    const-string v0, "Launcher.WORK_PROFILE_EDU_ACCEPT"

    const v1, 0x7f130271

    invoke-static {v1, p1, v0}, Lcom/android/launcher3/model/StringCache;->getEnterpriseString(ILandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "Launcher.WORK_PROFILE_PAUSED_TITLE"

    const v1, 0x7f13026f

    invoke-static {v1, p1, v0}, Lcom/android/launcher3/model/StringCache;->getEnterpriseString(ILandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/StringCache;->workProfilePausedTitle:Ljava/lang/String;

    new-instance v0, Lcom/android/launcher3/model/g1;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/model/g1;-><init>(Lcom/android/launcher3/model/StringCache;Landroid/content/Context;)V

    sget-boolean v1, Lcom/android/launcher3/Utilities;->ATLEAST_T:Z

    if-eqz v1, :cond_0

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v1

    const-string v2, "Launcher.WORK_PROFILE_PAUSED_DESCRIPTION"

    invoke-virtual {v1, v2, v0}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher3/model/g1;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/android/launcher3/model/StringCache;->workProfilePausedDescription:Ljava/lang/String;

    const-string v0, "Launcher.WORK_PROFILE_PAUSE_BUTTON"

    const v1, 0x7f130269

    invoke-static {v1, p1, v0}, Lcom/android/launcher3/model/StringCache;->getEnterpriseString(ILandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/StringCache;->workProfilePauseButton:Ljava/lang/String;

    const-string v0, "Launcher.WORK_PROFILE_ENABLE_BUTTON"

    const v1, 0x7f130268

    invoke-static {v1, p1, v0}, Lcom/android/launcher3/model/StringCache;->getEnterpriseString(ILandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/StringCache;->workProfileEnableButton:Ljava/lang/String;

    const-string v0, "Launcher.ALL_APPS_WORK_TAB"

    const v1, 0x7f130054

    invoke-static {v1, p1, v0}, Lcom/android/launcher3/model/StringCache;->getEnterpriseString(ILandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/StringCache;->allAppsWorkTab:Ljava/lang/String;

    const-string v0, "Launcher.ALL_APPS_PERSONAL_TAB"

    const v1, 0x7f130050

    invoke-static {v1, p1, v0}, Lcom/android/launcher3/model/StringCache;->getEnterpriseString(ILandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/StringCache;->allAppsPersonalTab:Ljava/lang/String;

    const-string v0, "Launcher.ALL_APPS_WORK_TAB_ACCESSIBILITY"

    const v1, 0x7f13004c

    invoke-static {v1, p1, v0}, Lcom/android/launcher3/model/StringCache;->getEnterpriseString(ILandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/StringCache;->allAppsWorkTabAccessibility:Ljava/lang/String;

    const-string v0, "Launcher.ALL_APPS_PERSONAL_TAB_ACCESSIBILITY"

    const v1, 0x7f13004b

    invoke-static {v1, p1, v0}, Lcom/android/launcher3/model/StringCache;->getEnterpriseString(ILandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/StringCache;->allAppsPersonalTabAccessibility:Ljava/lang/String;

    const-string v0, "Launcher.WORK_FOLDER_NAME"

    const v1, 0x7f130270

    invoke-static {v1, p1, v0}, Lcom/android/launcher3/model/StringCache;->getEnterpriseString(ILandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "Launcher.WIDGETS_WORK_TAB"

    const v1, 0x7f130264

    invoke-static {v1, p1, v0}, Lcom/android/launcher3/model/StringCache;->getEnterpriseString(ILandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/StringCache;->widgetsWorkTab:Ljava/lang/String;

    const-string v0, "Launcher.WIDGETS_PERSONAL_TAB"

    const v1, 0x7f130262

    invoke-static {v1, p1, v0}, Lcom/android/launcher3/model/StringCache;->getEnterpriseString(ILandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/StringCache;->widgetsPersonalTab:Ljava/lang/String;

    const-string v0, "Launcher.DISABLED_BY_ADMIN_MESSAGE"

    const v1, 0x7f130134

    invoke-static {v1, p1, v0}, Lcom/android/launcher3/model/StringCache;->getEnterpriseString(ILandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/model/StringCache;->disabledByAdminMessage:Ljava/lang/String;

    return-void
.end method
