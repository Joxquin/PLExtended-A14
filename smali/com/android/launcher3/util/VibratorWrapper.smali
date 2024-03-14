.class public final Lcom/android/launcher3/util/VibratorWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EFFECT_CLICK:Landroid/os/VibrationEffect;

.field public static final INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

.field public static final OVERVIEW_HAPTIC:Landroid/os/VibrationEffect;

.field public static final VIBRATION_ATTRS:Landroid/media/AudioAttributes;


# instance fields
.field private final mAssistEffect:Landroid/os/VibrationEffect;

.field private final mBumpEffect:Landroid/os/VibrationEffect;

.field private final mCommitEffect:Landroid/os/VibrationEffect;

.field private final mDragEffect:Landroid/os/VibrationEffect;

.field private final mHasVibrator:Z

.field private mIsHapticFeedbackEnabled:Z

.field private mLastDragTime:J

.field private final mThresholdUntilNextDragCallMillis:I

.field private final mVibrator:Landroid/os/Vibrator;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/launcher3/util/MainThreadInitializedObject;

    new-instance v1, Lcom/android/launcher3/util/K;

    invoke-direct {v1}, Lcom/android/launcher3/util/K;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;-><init>(Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/android/launcher3/util/VibratorWrapper;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/util/VibratorWrapper;->VIBRATION_ATTRS:Landroid/media/AudioAttributes;

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/VibrationEffect;->createPredefined(I)Landroid/os/VibrationEffect;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/util/VibratorWrapper;->EFFECT_CLICK:Landroid/os/VibrationEffect;

    sput-object v0, Lcom/android/launcher3/util/VibratorWrapper;->OVERVIEW_HAPTIC:Landroid/os/VibrationEffect;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Landroid/os/Vibrator;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/launcher3/util/VibratorWrapper;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher3/util/VibratorWrapper;->mHasVibrator:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "haptic_feedback_enabled"

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    iput-boolean v4, p0, Lcom/android/launcher3/util/VibratorWrapper;->mIsHapticFeedbackEnabled:Z

    new-instance v3, Lcom/android/launcher3/util/VibratorWrapper$1;

    sget-object v4, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v4}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-direct {v3, p0, v4, p1}, Lcom/android/launcher3/util/VibratorWrapper$1;-><init>(Lcom/android/launcher3/util/VibratorWrapper;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_1

    :cond_1
    iput-boolean v2, p0, Lcom/android/launcher3/util/VibratorWrapper;->mIsHapticFeedbackEnabled:Z

    :goto_1
    sget-boolean p1, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    const/4 v1, 0x7

    if-eqz p1, :cond_3

    const/16 p1, 0x8

    filled-new-array {p1}, [I

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Vibrator;->areAllPrimitivesSupported([I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/os/VibrationEffect;->startComposition()Landroid/os/VibrationEffect$Composition;

    move-result-object v0

    move v3, v2

    :goto_2
    const/16 v4, 0xc8

    if-ge v3, v4, :cond_2

    const v4, 0x3cf5c28f    # 0.03f

    invoke-virtual {v0, p1, v4}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IF)Landroid/os/VibrationEffect$Composition;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composition;->compose()Landroid/os/VibrationEffect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/util/VibratorWrapper;->mDragEffect:Landroid/os/VibrationEffect;

    invoke-static {}, Landroid/os/VibrationEffect;->startComposition()Landroid/os/VibrationEffect$Composition;

    move-result-object v0

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1, v3}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IF)Landroid/os/VibrationEffect$Composition;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composition;->compose()Landroid/os/VibrationEffect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/util/VibratorWrapper;->mCommitEffect:Landroid/os/VibrationEffect;

    invoke-static {}, Landroid/os/VibrationEffect;->startComposition()Landroid/os/VibrationEffect$Composition;

    move-result-object v0

    const v3, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, p1, v3}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IF)Landroid/os/VibrationEffect$Composition;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composition;->compose()Landroid/os/VibrationEffect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/util/VibratorWrapper;->mBumpEffect:Landroid/os/VibrationEffect;

    iget-object v0, p0, Lcom/android/launcher3/util/VibratorWrapper;->mVibrator:Landroid/os/Vibrator;

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Vibrator;->getPrimitiveDurations([I)[I

    move-result-object p1

    aget p1, p1, v2

    mul-int/2addr p1, v4

    add-int/lit8 p1, p1, 0x64

    iput p1, p0, Lcom/android/launcher3/util/VibratorWrapper;->mThresholdUntilNextDragCallMillis:I

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/util/VibratorWrapper;->mDragEffect:Landroid/os/VibrationEffect;

    iput-object p1, p0, Lcom/android/launcher3/util/VibratorWrapper;->mCommitEffect:Landroid/os/VibrationEffect;

    iput-object p1, p0, Lcom/android/launcher3/util/VibratorWrapper;->mBumpEffect:Landroid/os/VibrationEffect;

    iput v2, p0, Lcom/android/launcher3/util/VibratorWrapper;->mThresholdUntilNextDragCallMillis:I

    :goto_3
    sget-boolean p1, Lcom/android/launcher3/Utilities;->ATLEAST_R:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/launcher3/util/VibratorWrapper;->mVibrator:Landroid/os/Vibrator;

    const/4 v0, 0x4

    filled-new-array {v0, v1}, [I

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Vibrator;->areAllPrimitivesSupported([I)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Landroid/os/VibrationEffect;->startComposition()Landroid/os/VibrationEffect$Composition;

    move-result-object p1

    const/high16 v2, 0x3e800000    # 0.25f

    invoke-virtual {p1, v0, v2}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IF)Landroid/os/VibrationEffect$Composition;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    const/16 v2, 0x32

    invoke-virtual {p1, v1, v0, v2}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IFI)Landroid/os/VibrationEffect$Composition;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/VibrationEffect$Composition;->compose()Landroid/os/VibrationEffect;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/util/VibratorWrapper;->mAssistEffect:Landroid/os/VibrationEffect;

    goto :goto_4

    :cond_4
    const/4 p1, 0x5

    invoke-static {p1}, Landroid/os/VibrationEffect;->createPredefined(I)Landroid/os/VibrationEffect;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/util/VibratorWrapper;->mAssistEffect:Landroid/os/VibrationEffect;

    :goto_4
    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/util/VibratorWrapper;IFLandroid/os/VibrationEffect;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_R:Z

    sget-object v1, Lcom/android/launcher3/util/VibratorWrapper;->VIBRATION_ATTRS:Landroid/media/AudioAttributes;

    iget-object p0, p0, Lcom/android/launcher3/util/VibratorWrapper;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    filled-new-array {p1}, [I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Vibrator;->areAllPrimitivesSupported([I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/VibrationEffect;->startComposition()Landroid/os/VibrationEffect$Composition;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IF)Landroid/os/VibrationEffect$Composition;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/VibrationEffect$Composition;->compose()Landroid/os/VibrationEffect;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p3, v1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    :goto_0
    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/util/VibratorWrapper;Landroid/os/VibrationEffect;)V
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/util/VibratorWrapper;->mVibrator:Landroid/os/Vibrator;

    sget-object v0, Lcom/android/launcher3/util/VibratorWrapper;->VIBRATION_ATTRS:Landroid/media/AudioAttributes;

    invoke-virtual {p0, p1, v0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    return-void
.end method

.method public static synthetic c(Landroid/content/Context;)Lcom/android/launcher3/util/VibratorWrapper;
    .locals 1

    new-instance v0, Lcom/android/launcher3/util/VibratorWrapper;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/VibratorWrapper;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static bridge synthetic d(Lcom/android/launcher3/util/VibratorWrapper;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/util/VibratorWrapper;->mIsHapticFeedbackEnabled:Z

    return-void
.end method

.method public static e(Lcom/android/launcher3/util/VibratorWrapper;Landroid/content/ContentResolver;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "haptic_feedback_enabled"

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    move v0, p1

    :cond_0
    return v0
.end method


# virtual methods
.method public final cancelVibrate()V
    .locals 3

    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    iget-object v1, p0, Lcom/android/launcher3/util/VibratorWrapper;->mVibrator:Landroid/os/Vibrator;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/launcher3/util/L;

    invoke-direct {v2, v1}, Lcom/android/launcher3/util/L;-><init>(Landroid/os/Vibrator;)V

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/launcher3/util/VibratorWrapper;->mLastDragTime:J

    return-void
.end method

.method public final vibrate(IFLandroid/os/VibrationEffect;)V
    .locals 2

    .line 3
    iget-boolean v0, p0, Lcom/android/launcher3/util/VibratorWrapper;->mHasVibrator:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/util/VibratorWrapper;->mIsHapticFeedbackEnabled:Z

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/util/J;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/launcher3/util/J;-><init>(Lcom/android/launcher3/util/VibratorWrapper;IFLandroid/os/VibrationEffect;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final vibrate(Landroid/os/VibrationEffect;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/launcher3/util/VibratorWrapper;->mHasVibrator:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/util/VibratorWrapper;->mIsHapticFeedbackEnabled:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/util/I;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/util/I;-><init>(Lcom/android/launcher3/util/VibratorWrapper;Landroid/os/VibrationEffect;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final vibrateForAssist()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/util/VibratorWrapper;->mAssistEffect:Landroid/os/VibrationEffect;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/VibratorWrapper;->vibrate(Landroid/os/VibrationEffect;)V

    :cond_0
    return-void
.end method

.method public final vibrateForDragBump()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/util/VibratorWrapper;->mBumpEffect:Landroid/os/VibrationEffect;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/VibratorWrapper;->vibrate(Landroid/os/VibrationEffect;)V

    :cond_0
    return-void
.end method

.method public final vibrateForDragCommit()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/util/VibratorWrapper;->mCommitEffect:Landroid/os/VibrationEffect;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/VibratorWrapper;->vibrate(Landroid/os/VibrationEffect;)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/launcher3/util/VibratorWrapper;->mLastDragTime:J

    return-void
.end method

.method public final vibrateForDragTexture()V
    .locals 7

    iget-object v0, p0, Lcom/android/launcher3/util/VibratorWrapper;->mDragEffect:Landroid/os/VibrationEffect;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/launcher3/util/VibratorWrapper;->mLastDragTime:J

    sub-long v3, v1, v3

    iget v5, p0, Lcom/android/launcher3/util/VibratorWrapper;->mThresholdUntilNextDragCallMillis:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-ltz v3, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/VibratorWrapper;->vibrate(Landroid/os/VibrationEffect;)V

    iput-wide v1, p0, Lcom/android/launcher3/util/VibratorWrapper;->mLastDragTime:J

    :cond_1
    return-void
.end method
