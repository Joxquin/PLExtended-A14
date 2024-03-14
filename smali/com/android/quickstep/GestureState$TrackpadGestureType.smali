.class public final enum Lcom/android/quickstep/GestureState$TrackpadGestureType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/android/quickstep/GestureState$TrackpadGestureType;

.field public static final enum FOUR_FINGER:Lcom/android/quickstep/GestureState$TrackpadGestureType;

.field public static final enum NONE:Lcom/android/quickstep/GestureState$TrackpadGestureType;

.field public static final enum THREE_FINGER:Lcom/android/quickstep/GestureState$TrackpadGestureType;


# direct methods
.method private static synthetic $values()[Lcom/android/quickstep/GestureState$TrackpadGestureType;
    .locals 3

    sget-object v0, Lcom/android/quickstep/GestureState$TrackpadGestureType;->NONE:Lcom/android/quickstep/GestureState$TrackpadGestureType;

    sget-object v1, Lcom/android/quickstep/GestureState$TrackpadGestureType;->THREE_FINGER:Lcom/android/quickstep/GestureState$TrackpadGestureType;

    sget-object v2, Lcom/android/quickstep/GestureState$TrackpadGestureType;->FOUR_FINGER:Lcom/android/quickstep/GestureState$TrackpadGestureType;

    filled-new-array {v0, v1, v2}, [Lcom/android/quickstep/GestureState$TrackpadGestureType;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/quickstep/GestureState$TrackpadGestureType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/quickstep/GestureState$TrackpadGestureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/quickstep/GestureState$TrackpadGestureType;->NONE:Lcom/android/quickstep/GestureState$TrackpadGestureType;

    new-instance v0, Lcom/android/quickstep/GestureState$TrackpadGestureType;

    const-string v1, "THREE_FINGER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/quickstep/GestureState$TrackpadGestureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/quickstep/GestureState$TrackpadGestureType;->THREE_FINGER:Lcom/android/quickstep/GestureState$TrackpadGestureType;

    new-instance v0, Lcom/android/quickstep/GestureState$TrackpadGestureType;

    const-string v1, "FOUR_FINGER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/quickstep/GestureState$TrackpadGestureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/quickstep/GestureState$TrackpadGestureType;->FOUR_FINGER:Lcom/android/quickstep/GestureState$TrackpadGestureType;

    invoke-static {}, Lcom/android/quickstep/GestureState$TrackpadGestureType;->$values()[Lcom/android/quickstep/GestureState$TrackpadGestureType;

    move-result-object v0

    sput-object v0, Lcom/android/quickstep/GestureState$TrackpadGestureType;->$VALUES:[Lcom/android/quickstep/GestureState$TrackpadGestureType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getTrackpadGestureType(Landroid/view/MotionEvent;)Lcom/android/quickstep/GestureState$TrackpadGestureType;
    .locals 5

    invoke-static {p0}, Lcom/android/launcher3/MotionEventsUtils;->isTrackpadMultiFingerSwipe(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x35

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    const/high16 v4, 0x40400000    # 3.0f

    cmpl-float v0, v0, v4

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v0, :cond_1

    sget-object p0, Lcom/android/quickstep/GestureState$TrackpadGestureType;->THREE_FINGER:Lcom/android/quickstep/GestureState$TrackpadGestureType;

    return-object p0

    :cond_1
    invoke-static {p0}, Lcom/android/launcher3/MotionEventsUtils;->isTrackpadMultiFingerSwipe(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result p0

    const/high16 v0, 0x40800000    # 4.0f

    cmpl-float p0, p0, v0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    if-eqz v1, :cond_3

    sget-object p0, Lcom/android/quickstep/GestureState$TrackpadGestureType;->FOUR_FINGER:Lcom/android/quickstep/GestureState$TrackpadGestureType;

    return-object p0

    :cond_3
    sget-object p0, Lcom/android/quickstep/GestureState$TrackpadGestureType;->NONE:Lcom/android/quickstep/GestureState$TrackpadGestureType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/quickstep/GestureState$TrackpadGestureType;
    .locals 1

    const-class v0, Lcom/android/quickstep/GestureState$TrackpadGestureType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/GestureState$TrackpadGestureType;

    return-object p0
.end method

.method public static values()[Lcom/android/quickstep/GestureState$TrackpadGestureType;
    .locals 1

    sget-object v0, Lcom/android/quickstep/GestureState$TrackpadGestureType;->$VALUES:[Lcom/android/quickstep/GestureState$TrackpadGestureType;

    invoke-virtual {v0}, [Lcom/android/quickstep/GestureState$TrackpadGestureType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/quickstep/GestureState$TrackpadGestureType;

    return-object v0
.end method
