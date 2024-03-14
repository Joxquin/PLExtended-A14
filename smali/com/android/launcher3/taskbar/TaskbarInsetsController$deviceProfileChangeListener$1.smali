.class final Lcom/android/launcher3/taskbar/TaskbarInsetsController$deviceProfileChangeListener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lm3/l;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/taskbar/TaskbarInsetsController;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarInsetsController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController$deviceProfileChangeListener$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarInsetsController;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/android/launcher3/DeviceProfile;

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController$deviceProfileChangeListener$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarInsetsController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->onTaskbarOrBubblebarWindowHeightOrInsetsChanged()V

    sget-object p0, Le3/f;->a:Le3/f;

    return-object p0
.end method
