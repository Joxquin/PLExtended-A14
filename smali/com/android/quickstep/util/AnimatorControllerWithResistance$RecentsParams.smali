.class Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final context:Landroid/content/Context;

.field public final dp:Lcom/android/launcher3/DeviceProfile;

.field public final recentsOrientedState:Lcom/android/quickstep/util/RecentsOrientedState;

.field public resistAnim:Lcom/android/launcher3/anim/PendingAnimation;

.field public resistanceParams:Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;

.field public final scaleProperty:Landroid/util/FloatProperty;

.field public final scaleTarget:Ljava/lang/Object;

.field public startScale:F

.field public startTranslation:F

.field public final translationProperty:Landroid/util/FloatProperty;

.field public final translationTarget:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/quickstep/util/RecentsOrientedState;Lcom/android/launcher3/DeviceProfile;Ljava/lang/Object;Landroid/util/FloatProperty;Ljava/lang/Object;Landroid/util/FloatProperty;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;->resistAnim:Lcom/android/launcher3/anim/PendingAnimation;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    iput v0, p0, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;->startScale:F

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;->startTranslation:F

    .line 6
    iput-object p1, p0, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;->context:Landroid/content/Context;

    .line 7
    iput-object p2, p0, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;->recentsOrientedState:Lcom/android/quickstep/util/RecentsOrientedState;

    .line 8
    iput-object p3, p0, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;->dp:Lcom/android/launcher3/DeviceProfile;

    .line 9
    iput-object p4, p0, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;->scaleTarget:Ljava/lang/Object;

    .line 10
    iput-object p5, p0, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;->scaleProperty:Landroid/util/FloatProperty;

    .line 11
    iput-object p6, p0, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;->translationTarget:Ljava/lang/Object;

    .line 12
    iput-object p7, p0, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;->translationProperty:Landroid/util/FloatProperty;

    .line 13
    iget-boolean p1, p3, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz p1, :cond_1

    .line 14
    invoke-virtual {p2}, Lcom/android/quickstep/util/RecentsOrientedState;->getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/quickstep/BaseActivityInterface;->allowAllAppsFromOverview()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 15
    sget-object p1, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;->FROM_APP_TO_ALL_APPS_TABLET:Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;

    goto :goto_0

    .line 16
    :cond_0
    sget-object p1, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;->FROM_APP_TABLET:Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;

    :goto_0
    iput-object p1, p0, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;->resistanceParams:Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;

    goto :goto_2

    .line 17
    :cond_1
    invoke-virtual {p2}, Lcom/android/quickstep/util/RecentsOrientedState;->getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/quickstep/BaseActivityInterface;->allowAllAppsFromOverview()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 18
    sget-object p1, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;->FROM_APP_TO_ALL_APPS:Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;

    goto :goto_1

    .line 19
    :cond_2
    sget-object p1, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;->FROM_APP:Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;

    :goto_1
    iput-object p1, p0, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;->resistanceParams:Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;

    :goto_2
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/android/quickstep/util/RecentsOrientedState;Lcom/android/launcher3/DeviceProfile;Ljava/lang/Object;Landroid/util/FloatProperty;Ljava/lang/Object;Landroid/util/FloatProperty;I)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;-><init>(Landroid/content/Context;Lcom/android/quickstep/util/RecentsOrientedState;Lcom/android/launcher3/DeviceProfile;Ljava/lang/Object;Landroid/util/FloatProperty;Ljava/lang/Object;Landroid/util/FloatProperty;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;Lcom/android/launcher3/anim/PendingAnimation;)Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;->setResistAnim(Lcom/android/launcher3/anim/PendingAnimation;)Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;)Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;->setResistanceParams(Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;)Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;F)Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;->setStartScale(F)Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;

    move-result-object p0

    return-object p0
.end method

.method private setResistAnim(Lcom/android/launcher3/anim/PendingAnimation;)Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;->resistAnim:Lcom/android/launcher3/anim/PendingAnimation;

    return-object p0
.end method

.method private setResistanceParams(Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;)Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;->resistanceParams:Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;

    return-object p0
.end method

.method private setStartScale(F)Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;
    .locals 0

    iput p1, p0, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;->startScale:F

    return-object p0
.end method

.method private setStartTranslation(F)Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;
    .locals 0

    iput p1, p0, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;->startTranslation:F

    return-object p0
.end method
