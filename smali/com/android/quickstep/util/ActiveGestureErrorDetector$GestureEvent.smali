.class public final enum Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

.field public static final enum CANCEL_CURRENT_ANIMATION:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

.field public static final enum CANCEL_RECENTS_ANIMATION:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

.field public static final enum CLEANUP_SCREENSHOT:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

.field public static final enum EXPECTING_TASK_APPEARED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

.field public static final enum FINISH_RECENTS_ANIMATION:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

.field public static final enum FLAG_USING_OTHER_ACTIVITY_INPUT_CONSUMER:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

.field public static final enum LAUNCHER_DESTROYED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

.field public static final enum MOTION_DOWN:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

.field public static final enum MOTION_MOVE:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

.field public static final enum MOTION_UP:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

.field public static final enum ON_SETTLED_ON_END_TARGET:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

.field public static final enum SCROLLER_ANIMATION_ABORTED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

.field public static final enum SET_END_TARGET:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

.field public static final enum SET_END_TARGET_ALL_APPS:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

.field public static final enum SET_END_TARGET_HOME:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

.field public static final enum SET_END_TARGET_NEW_TASK:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

.field public static final enum SET_ON_PAGE_TRANSITION_END_CALLBACK:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

.field public static final enum START_RECENTS_ANIMATION:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

.field public static final enum STATE_CAPTURE_SCREENSHOT:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

.field public static final enum STATE_END_TARGET_ANIMATION_FINISHED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

.field public static final enum STATE_GESTURE_CANCELLED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

.field public static final enum STATE_GESTURE_COMPLETED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

.field public static final enum STATE_GESTURE_STARTED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

.field public static final enum STATE_HANDLER_INVALIDATED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

.field public static final enum STATE_LAUNCHER_DRAWN:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

.field public static final enum STATE_RECENTS_ANIMATION_CANCELED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

.field public static final enum STATE_RECENTS_SCROLLING_FINISHED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

.field public static final enum STATE_SCREENSHOT_CAPTURED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

.field public static final enum TASK_APPEARED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;


# instance fields
.field public final mLogEvent:Z

.field public final mTrackEvent:Z


# direct methods
.method private static synthetic $values()[Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;
    .locals 29

    sget-object v0, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->MOTION_DOWN:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    sget-object v1, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->MOTION_UP:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    sget-object v2, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->MOTION_MOVE:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    sget-object v3, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->SET_END_TARGET:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    sget-object v4, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->SET_END_TARGET_HOME:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    sget-object v5, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->SET_END_TARGET_NEW_TASK:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    sget-object v6, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->SET_END_TARGET_ALL_APPS:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    sget-object v7, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->ON_SETTLED_ON_END_TARGET:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    sget-object v8, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->START_RECENTS_ANIMATION:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    sget-object v9, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->FINISH_RECENTS_ANIMATION:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    sget-object v10, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->CANCEL_RECENTS_ANIMATION:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    sget-object v11, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->SET_ON_PAGE_TRANSITION_END_CALLBACK:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    sget-object v12, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->CANCEL_CURRENT_ANIMATION:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    sget-object v13, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->CLEANUP_SCREENSHOT:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    sget-object v14, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->SCROLLER_ANIMATION_ABORTED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    sget-object v15, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->TASK_APPEARED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    sget-object v16, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->EXPECTING_TASK_APPEARED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    sget-object v17, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->FLAG_USING_OTHER_ACTIVITY_INPUT_CONSUMER:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    sget-object v18, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->LAUNCHER_DESTROYED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    sget-object v19, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->STATE_GESTURE_STARTED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    sget-object v20, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->STATE_GESTURE_COMPLETED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    sget-object v21, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->STATE_GESTURE_CANCELLED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    sget-object v22, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->STATE_END_TARGET_ANIMATION_FINISHED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    sget-object v23, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->STATE_RECENTS_SCROLLING_FINISHED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    sget-object v24, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->STATE_CAPTURE_SCREENSHOT:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    sget-object v25, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->STATE_SCREENSHOT_CAPTURED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    sget-object v26, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->STATE_HANDLER_INVALIDATED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    sget-object v27, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->STATE_RECENTS_ANIMATION_CANCELED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    sget-object v28, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->STATE_LAUNCHER_DRAWN:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    filled-new-array/range {v0 .. v28}, [Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    const-string v1, "MOTION_DOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->MOTION_DOWN:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    new-instance v0, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    const-string v1, "MOTION_UP"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->MOTION_UP:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    new-instance v0, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    const-string v1, "MOTION_MOVE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->MOTION_MOVE:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    new-instance v0, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    const-string v1, "SET_END_TARGET"

    const/4 v4, 0x3

    invoke-direct {v0, v1, v4}, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->SET_END_TARGET:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    new-instance v0, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    const-string v1, "SET_END_TARGET_HOME"

    const/4 v4, 0x4

    invoke-direct {v0, v1, v4}, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->SET_END_TARGET_HOME:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    new-instance v0, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    const-string v1, "SET_END_TARGET_NEW_TASK"

    const/4 v4, 0x5

    invoke-direct {v0, v1, v4}, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->SET_END_TARGET_NEW_TASK:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    new-instance v0, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    const-string v1, "SET_END_TARGET_ALL_APPS"

    const/4 v4, 0x6

    invoke-direct {v0, v1, v4}, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->SET_END_TARGET_ALL_APPS:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    new-instance v0, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    const-string v1, "ON_SETTLED_ON_END_TARGET"

    const/4 v4, 0x7

    invoke-direct {v0, v1, v4}, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->ON_SETTLED_ON_END_TARGET:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    new-instance v0, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    const-string v1, "START_RECENTS_ANIMATION"

    const/16 v4, 0x8

    invoke-direct {v0, v1, v4}, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->START_RECENTS_ANIMATION:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    new-instance v0, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    const-string v1, "FINISH_RECENTS_ANIMATION"

    const/16 v4, 0x9

    invoke-direct {v0, v1, v4}, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->FINISH_RECENTS_ANIMATION:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    new-instance v0, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    const-string v1, "CANCEL_RECENTS_ANIMATION"

    const/16 v4, 0xa

    invoke-direct {v0, v1, v4}, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->CANCEL_RECENTS_ANIMATION:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    new-instance v0, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    const-string v1, "SET_ON_PAGE_TRANSITION_END_CALLBACK"

    const/16 v4, 0xb

    invoke-direct {v0, v1, v4}, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->SET_ON_PAGE_TRANSITION_END_CALLBACK:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    new-instance v0, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    const-string v1, "CANCEL_CURRENT_ANIMATION"

    const/16 v4, 0xc

    invoke-direct {v0, v1, v4}, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->CANCEL_CURRENT_ANIMATION:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    new-instance v0, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    const-string v1, "CLEANUP_SCREENSHOT"

    const/16 v4, 0xd

    invoke-direct {v0, v1, v4}, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->CLEANUP_SCREENSHOT:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    new-instance v0, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    const-string v1, "SCROLLER_ANIMATION_ABORTED"

    const/16 v4, 0xe

    invoke-direct {v0, v1, v4}, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->SCROLLER_ANIMATION_ABORTED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    new-instance v0, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    const-string v1, "TASK_APPEARED"

    const/16 v4, 0xf

    invoke-direct {v0, v1, v4}, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->TASK_APPEARED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    new-instance v0, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    const-string v1, "EXPECTING_TASK_APPEARED"

    const/16 v4, 0x10

    invoke-direct {v0, v1, v4}, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->EXPECTING_TASK_APPEARED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    new-instance v0, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    const-string v1, "FLAG_USING_OTHER_ACTIVITY_INPUT_CONSUMER"

    const/16 v4, 0x11

    invoke-direct {v0, v1, v4}, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->FLAG_USING_OTHER_ACTIVITY_INPUT_CONSUMER:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    new-instance v0, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    const-string v1, "LAUNCHER_DESTROYED"

    const/16 v4, 0x12

    invoke-direct {v0, v1, v4}, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->LAUNCHER_DESTROYED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    new-instance v0, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    const-string v1, "STATE_GESTURE_STARTED"

    const/16 v4, 0x13

    invoke-direct {v0, v1, v4}, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->STATE_GESTURE_STARTED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    new-instance v0, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    const-string v1, "STATE_GESTURE_COMPLETED"

    const/16 v4, 0x14

    invoke-direct {v0, v1, v4}, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->STATE_GESTURE_COMPLETED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    new-instance v0, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    const-string v1, "STATE_GESTURE_CANCELLED"

    const/16 v4, 0x15

    invoke-direct {v0, v1, v4}, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->STATE_GESTURE_CANCELLED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    new-instance v0, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    const-string v1, "STATE_END_TARGET_ANIMATION_FINISHED"

    const/16 v4, 0x16

    invoke-direct {v0, v1, v4}, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->STATE_END_TARGET_ANIMATION_FINISHED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    new-instance v0, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    const-string v1, "STATE_RECENTS_SCROLLING_FINISHED"

    const/16 v4, 0x17

    invoke-direct {v0, v1, v4}, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->STATE_RECENTS_SCROLLING_FINISHED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    new-instance v0, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    const-string v1, "STATE_CAPTURE_SCREENSHOT"

    const/16 v4, 0x18

    invoke-direct {v0, v1, v4}, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->STATE_CAPTURE_SCREENSHOT:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    new-instance v0, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    const-string v1, "STATE_SCREENSHOT_CAPTURED"

    const/16 v4, 0x19

    invoke-direct {v0, v1, v4}, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->STATE_SCREENSHOT_CAPTURED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    new-instance v0, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    const-string v1, "STATE_HANDLER_INVALIDATED"

    const/16 v4, 0x1a

    invoke-direct {v0, v1, v4}, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->STATE_HANDLER_INVALIDATED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    new-instance v0, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    const-string v1, "STATE_RECENTS_ANIMATION_CANCELED"

    const/16 v4, 0x1b

    invoke-direct {v0, v1, v4}, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->STATE_RECENTS_ANIMATION_CANCELED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    new-instance v0, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    const-string v1, "STATE_LAUNCHER_DRAWN"

    const/16 v4, 0x1c

    invoke-direct {v0, v1, v4, v3, v2}, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->STATE_LAUNCHER_DRAWN:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-static {}, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->$values()[Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    move-result-object v0

    sput-object v0, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->$VALUES:[Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;-><init>(Ljava/lang/String;IZZ)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZ)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3
    iput-boolean p3, p0, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->mLogEvent:Z

    .line 4
    iput-boolean p4, p0, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->mTrackEvent:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;
    .locals 1

    const-class v0, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    return-object p0
.end method

.method public static values()[Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;
    .locals 1

    sget-object v0, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->$VALUES:[Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {v0}, [Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    return-object v0
.end method
