.class public final Lcom/android/launcher3/touch/AllAppsSwipeController;
.super Lcom/android/launcher3/touch/AbstractStateChangeTouchController;
.source "SourceFile"


# static fields
.field public static final ALL_APPS_CLAMPING_RESPONDER:Ly0/b;

.field public static final ALL_APPS_FADE_ATOMIC:Ly0/b;

.field public static final ALL_APPS_FADE_MANUAL:Ly0/b;

.field public static final ALL_APPS_SCRIM_RESPONDER:Ly0/b;

.field public static final ALL_APPS_VERTICAL_PROGRESS_ATOMIC:Ly0/b;

.field public static final ALL_APPS_VERTICAL_PROGRESS_MANUAL:Landroid/view/animation/Interpolator;

.field private static final BLUR_ADJUSTED:Ly0/b;

.field public static final BLUR_ATOMIC:Ly0/b;

.field public static final BLUR_MANUAL:Ly0/b;

.field public static final HOTSEAT_FADE_ATOMIC:Ly0/b;

.field public static final HOTSEAT_FADE_MANUAL:Ly0/b;

.field public static final HOTSEAT_SCALE_ATOMIC:Ly0/b;

.field public static final HOTSEAT_SCALE_MANUAL:Ly0/b;

.field public static final HOTSEAT_TRANSLATE_ATOMIC:Ly0/b;

.field public static final HOTSEAT_TRANSLATE_MANUAL:Ly0/b;

.field private static final LINEAR_EARLY_MANUAL:Ly0/b;

.field public static final SCRIM_FADE_ATOMIC:Ly0/b;

.field public static final SCRIM_FADE_MANUAL:Ly0/b;

.field private static final STEP_TRANSITION_ATOMIC:Ly0/b;

.field private static final STEP_TRANSITION_MANUAL:Ly0/b;

.field public static final WORKSPACE_FADE_ATOMIC:Ly0/b;

.field public static final WORKSPACE_FADE_MANUAL:Ly0/b;

.field public static final WORKSPACE_SCALE_ATOMIC:Ly0/b;

.field public static final WORKSPACE_SCALE_MANUAL:Ly0/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    sget-object v0, Ly0/e;->m:Landroid/view/animation/Interpolator;

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v1, v2, v0}, Ly0/e;->b(FFLandroid/view/animation/Interpolator;)Ly0/b;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/touch/AllAppsSwipeController;->ALL_APPS_SCRIM_RESPONDER:Ly0/b;

    const v1, 0x3e4ccccc    # 0.19999999f

    invoke-static {v1, v2, v0}, Ly0/e;->b(FFLandroid/view/animation/Interpolator;)Ly0/b;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/touch/AllAppsSwipeController;->ALL_APPS_CLAMPING_RESPONDER:Ly0/b;

    const/4 v1, 0x0

    const v3, 0x3ecccccd    # 0.4f

    invoke-static {v1, v3, v0}, Ly0/e;->b(FFLandroid/view/animation/Interpolator;)Ly0/b;

    move-result-object v4

    sput-object v4, Lcom/android/launcher3/touch/AllAppsSwipeController;->LINEAR_EARLY_MANUAL:Ly0/b;

    sget-object v5, Ly0/e;->f:Ly0/a;

    const v6, 0x3eaaa64c    # 0.3333f

    invoke-static {v1, v6, v5}, Ly0/e;->b(FFLandroid/view/animation/Interpolator;)Ly0/b;

    move-result-object v7

    sput-object v7, Lcom/android/launcher3/touch/AllAppsSwipeController;->STEP_TRANSITION_ATOMIC:Ly0/b;

    invoke-static {v1, v3, v5}, Ly0/e;->b(FFLandroid/view/animation/Interpolator;)Ly0/b;

    move-result-object v5

    sput-object v5, Lcom/android/launcher3/touch/AllAppsSwipeController;->STEP_TRANSITION_MANUAL:Ly0/b;

    new-instance v8, Ly0/b;

    const/4 v9, 0x1

    invoke-direct {v8, v0, v1, v2, v9}, Ly0/b;-><init>(Landroid/view/animation/Interpolator;FFI)V

    sput-object v8, Lcom/android/launcher3/touch/AllAppsSwipeController;->BLUR_ADJUSTED:Ly0/b;

    const v2, 0x3e2ab368    # 0.1667f

    invoke-static {v2, v6, v8}, Ly0/e;->b(FFLandroid/view/animation/Interpolator;)Ly0/b;

    move-result-object v10

    sput-object v10, Lcom/android/launcher3/touch/AllAppsSwipeController;->BLUR_ATOMIC:Ly0/b;

    invoke-static {v1, v3, v8}, Ly0/e;->b(FFLandroid/view/animation/Interpolator;)Ly0/b;

    move-result-object v8

    sput-object v8, Lcom/android/launcher3/touch/AllAppsSwipeController;->BLUR_MANUAL:Ly0/b;

    sput-object v7, Lcom/android/launcher3/touch/AllAppsSwipeController;->WORKSPACE_FADE_ATOMIC:Ly0/b;

    sput-object v5, Lcom/android/launcher3/touch/AllAppsSwipeController;->WORKSPACE_FADE_MANUAL:Ly0/b;

    sget-object v8, Ly0/e;->b:Landroid/view/animation/Interpolator;

    invoke-static {v2, v6, v8}, Ly0/e;->b(FFLandroid/view/animation/Interpolator;)Ly0/b;

    move-result-object v10

    sput-object v10, Lcom/android/launcher3/touch/AllAppsSwipeController;->WORKSPACE_SCALE_ATOMIC:Ly0/b;

    sput-object v4, Lcom/android/launcher3/touch/AllAppsSwipeController;->WORKSPACE_SCALE_MANUAL:Ly0/b;

    sput-object v7, Lcom/android/launcher3/touch/AllAppsSwipeController;->HOTSEAT_FADE_ATOMIC:Ly0/b;

    sput-object v5, Lcom/android/launcher3/touch/AllAppsSwipeController;->HOTSEAT_FADE_MANUAL:Ly0/b;

    invoke-static {v2, v6, v8}, Ly0/e;->b(FFLandroid/view/animation/Interpolator;)Ly0/b;

    move-result-object v2

    sput-object v2, Lcom/android/launcher3/touch/AllAppsSwipeController;->HOTSEAT_SCALE_ATOMIC:Ly0/b;

    sput-object v4, Lcom/android/launcher3/touch/AllAppsSwipeController;->HOTSEAT_SCALE_MANUAL:Ly0/b;

    sput-object v7, Lcom/android/launcher3/touch/AllAppsSwipeController;->HOTSEAT_TRANSLATE_ATOMIC:Ly0/b;

    sput-object v5, Lcom/android/launcher3/touch/AllAppsSwipeController;->HOTSEAT_TRANSLATE_MANUAL:Ly0/b;

    new-instance v2, Ly0/b;

    const v4, 0x3f4ccccd    # 0.8f

    invoke-direct {v2, v0, v1, v4, v9}, Ly0/b;-><init>(Landroid/view/animation/Interpolator;FFI)V

    const v1, 0x3e874539    # 0.2642f

    invoke-static {v1, v6, v2}, Ly0/e;->b(FFLandroid/view/animation/Interpolator;)Ly0/b;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/touch/AllAppsSwipeController;->SCRIM_FADE_ATOMIC:Ly0/b;

    const v1, 0x3def9db2    # 0.117f

    invoke-static {v1, v3, v0}, Ly0/e;->b(FFLandroid/view/animation/Interpolator;)Ly0/b;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/touch/AllAppsSwipeController;->SCRIM_FADE_MANUAL:Ly0/b;

    sget-object v1, Ly0/e;->c:Landroid/view/animation/Interpolator;

    new-instance v2, Ly0/b;

    const v5, 0x3e4ccccd    # 0.2f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v2, v1, v5, v7, v9}, Ly0/b;-><init>(Landroid/view/animation/Interpolator;FFI)V

    const v5, 0x3f555326    # 0.8333f

    invoke-static {v6, v5, v2}, Ly0/e;->b(FFLandroid/view/animation/Interpolator;)Ly0/b;

    move-result-object v2

    sput-object v2, Lcom/android/launcher3/touch/AllAppsSwipeController;->ALL_APPS_FADE_ATOMIC:Ly0/b;

    invoke-static {v3, v4, v0}, Ly0/e;->b(FFLandroid/view/animation/Interpolator;)Ly0/b;

    move-result-object v2

    sput-object v2, Lcom/android/launcher3/touch/AllAppsSwipeController;->ALL_APPS_FADE_MANUAL:Ly0/b;

    new-instance v2, Ly0/b;

    invoke-direct {v2, v1, v3, v7, v9}, Ly0/b;-><init>(Landroid/view/animation/Interpolator;FFI)V

    invoke-static {v6, v7, v2}, Ly0/e;->b(FFLandroid/view/animation/Interpolator;)Ly0/b;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/touch/AllAppsSwipeController;->ALL_APPS_VERTICAL_PROGRESS_ATOMIC:Ly0/b;

    sput-object v0, Lcom/android/launcher3/touch/AllAppsSwipeController;->ALL_APPS_VERTICAL_PROGRESS_MANUAL:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 1

    sget-object v0, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->VERTICAL:Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;)V

    return-void
.end method

.method public static applyAllAppsToNormalConfig(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/states/StateAnimationConfig;)V
    .locals 7

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object p0

    iget-boolean p0, p0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    const/4 v0, 0x1

    const/16 v1, 0xd

    sget-object v2, Lcom/android/launcher3/touch/AllAppsSwipeController;->ALL_APPS_SCRIM_RESPONDER:Ly0/b;

    const/4 v3, 0x0

    const/16 v4, 0xa

    const/16 v5, 0xb

    if-eqz p0, :cond_1

    new-instance p0, Ly0/c;

    invoke-direct {p0, v2}, Ly0/c;-><init>(Landroid/view/animation/Interpolator;)V

    invoke-virtual {p1, v5, p0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    sget-object p0, Ly0/e;->f:Ly0/a;

    invoke-virtual {p1, v4, p0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    iget-boolean p0, p1, Lcom/android/launcher3/states/StateAnimationConfig;->userControlled:Z

    if-nez p0, :cond_0

    sget-object p0, Ly0/e;->a:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v3, p0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    :cond_0
    sget-object p0, Ly0/e;->r:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0, p0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    invoke-virtual {p1, v1, p0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    goto/16 :goto_0

    :cond_1
    iget-boolean p0, p1, Lcom/android/launcher3/states/StateAnimationConfig;->userControlled:Z

    const/4 v6, 0x3

    if-eqz p0, :cond_2

    new-instance p0, Ly0/c;

    sget-object v2, Lcom/android/launcher3/touch/AllAppsSwipeController;->BLUR_MANUAL:Ly0/b;

    invoke-direct {p0, v2}, Ly0/c;-><init>(Landroid/view/animation/Interpolator;)V

    invoke-virtual {p1, v1, p0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    new-instance p0, Ly0/c;

    sget-object v1, Lcom/android/launcher3/touch/AllAppsSwipeController;->WORKSPACE_FADE_MANUAL:Ly0/b;

    invoke-direct {p0, v1}, Ly0/c;-><init>(Landroid/view/animation/Interpolator;)V

    invoke-virtual {p1, v6, p0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    new-instance p0, Ly0/c;

    sget-object v1, Lcom/android/launcher3/touch/AllAppsSwipeController;->WORKSPACE_SCALE_MANUAL:Ly0/b;

    invoke-direct {p0, v1}, Ly0/c;-><init>(Landroid/view/animation/Interpolator;)V

    invoke-virtual {p1, v0, p0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    new-instance p0, Ly0/c;

    sget-object v0, Lcom/android/launcher3/touch/AllAppsSwipeController;->HOTSEAT_FADE_MANUAL:Ly0/b;

    invoke-direct {p0, v0}, Ly0/c;-><init>(Landroid/view/animation/Interpolator;)V

    const/16 v0, 0x10

    invoke-virtual {p1, v0, p0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    new-instance p0, Ly0/c;

    sget-object v0, Lcom/android/launcher3/touch/AllAppsSwipeController;->HOTSEAT_SCALE_MANUAL:Ly0/b;

    invoke-direct {p0, v0}, Ly0/c;-><init>(Landroid/view/animation/Interpolator;)V

    const/4 v0, 0x4

    invoke-virtual {p1, v0, p0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    new-instance p0, Ly0/c;

    sget-object v0, Lcom/android/launcher3/touch/AllAppsSwipeController;->HOTSEAT_TRANSLATE_MANUAL:Ly0/b;

    invoke-direct {p0, v0}, Ly0/c;-><init>(Landroid/view/animation/Interpolator;)V

    const/4 v0, 0x5

    invoke-virtual {p1, v0, p0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    new-instance p0, Ly0/c;

    sget-object v0, Lcom/android/launcher3/touch/AllAppsSwipeController;->SCRIM_FADE_MANUAL:Ly0/b;

    invoke-direct {p0, v0}, Ly0/c;-><init>(Landroid/view/animation/Interpolator;)V

    invoke-virtual {p1, v5, p0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    new-instance p0, Ly0/c;

    sget-object v0, Lcom/android/launcher3/touch/AllAppsSwipeController;->ALL_APPS_FADE_MANUAL:Ly0/b;

    invoke-direct {p0, v0}, Ly0/c;-><init>(Landroid/view/animation/Interpolator;)V

    invoke-virtual {p1, v4, p0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    sget-object p0, Lcom/android/launcher3/touch/AllAppsSwipeController;->ALL_APPS_VERTICAL_PROGRESS_MANUAL:Landroid/view/animation/Interpolator;

    new-instance v0, Ly0/c;

    invoke-direct {v0, p0}, Ly0/c;-><init>(Landroid/view/animation/Interpolator;)V

    invoke-virtual {p1, v3, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    goto :goto_0

    :cond_2
    new-instance p0, Ly0/c;

    invoke-direct {p0, v2}, Ly0/c;-><init>(Landroid/view/animation/Interpolator;)V

    invoke-virtual {p1, v5, p0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    sget-object p0, Lcom/android/launcher3/touch/AllAppsSwipeController;->ALL_APPS_CLAMPING_RESPONDER:Ly0/b;

    invoke-virtual {p1, v4, p0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    sget-object p0, Ly0/e;->e:Ly0/a;

    invoke-virtual {p1, v6, p0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    sget-object p0, Ly0/e;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v3, p0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    :goto_0
    return-void
.end method

.method public static applyNormalToAllAppsAnimConfig(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/states/StateAnimationConfig;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object p0

    iget-boolean p0, p0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0xb

    const/16 v3, 0xa

    const/16 v4, 0xd

    if-eqz p0, :cond_1

    sget-object p0, Ly0/e;->e:Ly0/a;

    invoke-virtual {p1, v3, p0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    sget-object p0, Lcom/android/launcher3/touch/AllAppsSwipeController;->ALL_APPS_SCRIM_RESPONDER:Ly0/b;

    invoke-virtual {p1, v2, p0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    iget-boolean p0, p1, Lcom/android/launcher3/states/StateAnimationConfig;->userControlled:Z

    if-nez p0, :cond_0

    sget-object p0, Ly0/e;->a:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0, p0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    :cond_0
    sget-object p0, Ly0/e;->r:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v1, p0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    invoke-virtual {p1, v4, p0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    goto/16 :goto_9

    :cond_1
    iget-boolean p0, p1, Lcom/android/launcher3/states/StateAnimationConfig;->userControlled:Z

    if-eqz p0, :cond_2

    sget-object p0, Lcom/android/launcher3/touch/AllAppsSwipeController;->BLUR_MANUAL:Ly0/b;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/android/launcher3/touch/AllAppsSwipeController;->BLUR_ATOMIC:Ly0/b;

    :goto_0
    invoke-virtual {p1, v4, p0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    iget-boolean p0, p1, Lcom/android/launcher3/states/StateAnimationConfig;->userControlled:Z

    if-eqz p0, :cond_3

    sget-object p0, Lcom/android/launcher3/touch/AllAppsSwipeController;->WORKSPACE_FADE_MANUAL:Ly0/b;

    goto :goto_1

    :cond_3
    sget-object p0, Lcom/android/launcher3/touch/AllAppsSwipeController;->WORKSPACE_FADE_ATOMIC:Ly0/b;

    :goto_1
    const/4 v4, 0x3

    invoke-virtual {p1, v4, p0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    iget-boolean p0, p1, Lcom/android/launcher3/states/StateAnimationConfig;->userControlled:Z

    if-eqz p0, :cond_4

    sget-object p0, Lcom/android/launcher3/touch/AllAppsSwipeController;->WORKSPACE_SCALE_MANUAL:Ly0/b;

    goto :goto_2

    :cond_4
    sget-object p0, Lcom/android/launcher3/touch/AllAppsSwipeController;->WORKSPACE_SCALE_ATOMIC:Ly0/b;

    :goto_2
    invoke-virtual {p1, v1, p0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    iget-boolean p0, p1, Lcom/android/launcher3/states/StateAnimationConfig;->userControlled:Z

    if-eqz p0, :cond_5

    sget-object p0, Lcom/android/launcher3/touch/AllAppsSwipeController;->HOTSEAT_FADE_MANUAL:Ly0/b;

    goto :goto_3

    :cond_5
    sget-object p0, Lcom/android/launcher3/touch/AllAppsSwipeController;->HOTSEAT_FADE_ATOMIC:Ly0/b;

    :goto_3
    const/16 v1, 0x10

    invoke-virtual {p1, v1, p0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    iget-boolean p0, p1, Lcom/android/launcher3/states/StateAnimationConfig;->userControlled:Z

    if-eqz p0, :cond_6

    sget-object p0, Lcom/android/launcher3/touch/AllAppsSwipeController;->HOTSEAT_SCALE_MANUAL:Ly0/b;

    goto :goto_4

    :cond_6
    sget-object p0, Lcom/android/launcher3/touch/AllAppsSwipeController;->HOTSEAT_SCALE_ATOMIC:Ly0/b;

    :goto_4
    const/4 v1, 0x4

    invoke-virtual {p1, v1, p0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    iget-boolean p0, p1, Lcom/android/launcher3/states/StateAnimationConfig;->userControlled:Z

    if-eqz p0, :cond_7

    sget-object p0, Lcom/android/launcher3/touch/AllAppsSwipeController;->HOTSEAT_TRANSLATE_MANUAL:Ly0/b;

    goto :goto_5

    :cond_7
    sget-object p0, Lcom/android/launcher3/touch/AllAppsSwipeController;->HOTSEAT_TRANSLATE_ATOMIC:Ly0/b;

    :goto_5
    const/4 v1, 0x5

    invoke-virtual {p1, v1, p0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    iget-boolean p0, p1, Lcom/android/launcher3/states/StateAnimationConfig;->userControlled:Z

    if-eqz p0, :cond_8

    sget-object p0, Lcom/android/launcher3/touch/AllAppsSwipeController;->SCRIM_FADE_MANUAL:Ly0/b;

    goto :goto_6

    :cond_8
    sget-object p0, Lcom/android/launcher3/touch/AllAppsSwipeController;->SCRIM_FADE_ATOMIC:Ly0/b;

    :goto_6
    invoke-virtual {p1, v2, p0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    iget-boolean p0, p1, Lcom/android/launcher3/states/StateAnimationConfig;->userControlled:Z

    if-eqz p0, :cond_9

    sget-object p0, Lcom/android/launcher3/touch/AllAppsSwipeController;->ALL_APPS_FADE_MANUAL:Ly0/b;

    goto :goto_7

    :cond_9
    sget-object p0, Lcom/android/launcher3/touch/AllAppsSwipeController;->ALL_APPS_FADE_ATOMIC:Ly0/b;

    :goto_7
    invoke-virtual {p1, v3, p0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    iget-boolean p0, p1, Lcom/android/launcher3/states/StateAnimationConfig;->userControlled:Z

    if-eqz p0, :cond_a

    sget-object p0, Lcom/android/launcher3/touch/AllAppsSwipeController;->ALL_APPS_VERTICAL_PROGRESS_MANUAL:Landroid/view/animation/Interpolator;

    goto :goto_8

    :cond_a
    sget-object p0, Lcom/android/launcher3/touch/AllAppsSwipeController;->ALL_APPS_VERTICAL_PROGRESS_ATOMIC:Ly0/b;

    :goto_8
    invoke-virtual {p1, v0, p0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    :goto_9
    return-void
.end method


# virtual methods
.method public final canInterceptTouch(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v3, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v3, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/uioverrides/states/AllAppsState;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v3, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/uioverrides/states/AllAppsState;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->shouldContainerScroll(Landroid/view/MotionEvent;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method public final getConfigForStates(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/LauncherState;)Lcom/android/launcher3/states/StateAnimationConfig;
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->getConfigForStates(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/LauncherState;)Lcom/android/launcher3/states/StateAnimationConfig;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/states/StateAnimationConfig;->userControlled:Z

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne p1, v1, :cond_0

    sget-object v2, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/uioverrides/states/AllAppsState;

    if-ne p2, v2, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {p0, v0}, Lcom/android/launcher3/touch/AllAppsSwipeController;->applyNormalToAllAppsAnimConfig(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/states/StateAnimationConfig;)V

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/uioverrides/states/AllAppsState;

    if-ne p1, v2, :cond_1

    if-ne p2, v1, :cond_1

    iget-object p0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {p0, v0}, Lcom/android/launcher3/touch/AllAppsSwipeController;->applyAllAppsToNormalConfig(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/states/StateAnimationConfig;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public final getTargetState(Lcom/android/launcher3/LauncherState;Z)Lcom/android/launcher3/LauncherState;
    .locals 1

    sget-object p0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne p1, p0, :cond_0

    if-eqz p2, :cond_0

    sget-object p0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/uioverrides/states/AllAppsState;

    return-object p0

    :cond_0
    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/uioverrides/states/AllAppsState;

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_1

    return-object p0

    :cond_1
    return-object p1
.end method

.method public final initCurrentAnimation()F
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->getShiftRange()F

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mFromState:Lcom/android/launcher3/LauncherState;

    iget-object v2, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mToState:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher3/touch/AllAppsSwipeController;->getConfigForStates(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/LauncherState;)Lcom/android/launcher3/states/StateAnimationConfig;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v0

    float-to-long v2, v2

    iput-wide v2, v1, Lcom/android/launcher3/states/StateAnimationConfig;->duration:J

    iget-object v2, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mToState:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v2, v3, v1}, Lcom/android/launcher3/statemanager/StateManager;->createAnimationToNewWorkspace(Lcom/android/launcher3/statemanager/BaseState;Lcom/android/launcher3/states/StateAnimationConfig;)Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    iget-object v1, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mFromState:Lcom/android/launcher3/LauncherState;

    iget-object v2, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/LauncherState;->getVerticalProgress(Lcom/android/launcher3/Launcher;)F

    move-result v1

    mul-float/2addr v1, v0

    iget-object v2, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mToState:Lcom/android/launcher3/LauncherState;

    iget-object p0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2, p0}, Lcom/android/launcher3/LauncherState;->getVerticalProgress(Lcom/android/launcher3/Launcher;)F

    move-result p0

    mul-float/2addr p0, v0

    sub-float/2addr p0, v1

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p0

    return v0
.end method
