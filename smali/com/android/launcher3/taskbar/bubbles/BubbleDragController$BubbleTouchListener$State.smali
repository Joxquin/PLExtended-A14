.class final enum Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener$State;

.field public static final enum CANCELLED:Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener$State;

.field public static final enum DRAGGING:Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener$State;

.field public static final enum IDLE:Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener$State;

.field public static final enum TOUCHED:Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener$State;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener$State;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener$State;->IDLE:Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener$State;

    new-instance v1, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener$State;

    const-string v2, "TOUCHED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener$State;->TOUCHED:Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener$State;

    new-instance v2, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener$State;

    const-string v3, "DRAGGING"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener$State;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener$State;->DRAGGING:Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener$State;

    new-instance v3, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener$State;

    const-string v4, "CANCELLED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener$State;->CANCELLED:Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener$State;

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener$State;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener$State;->$VALUES:[Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener$State;
    .locals 1

    const-class v0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener$State;

    return-object p0
.end method

.method public static values()[Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener$State;
    .locals 1

    sget-object v0, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener$State;->$VALUES:[Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener$State;

    invoke-virtual {v0}, [Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener$State;

    return-object v0
.end method
