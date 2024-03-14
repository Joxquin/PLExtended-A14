.class final Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$maybeConsumeMotionEvent$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lm3/a;


# instance fields
.field final synthetic $flungToTarget:Lcom/android/wm/shell/common/magnetictarget/c;

.field final synthetic this$0:Lcom/android/wm/shell/common/magnetictarget/d;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/magnetictarget/d;Lcom/android/wm/shell/common/magnetictarget/c;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$maybeConsumeMotionEvent$1;->this$0:Lcom/android/wm/shell/common/magnetictarget/d;

    iput-object p2, p0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$maybeConsumeMotionEvent$1;->$flungToTarget:Lcom/android/wm/shell/common/magnetictarget/c;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$maybeConsumeMotionEvent$1;->this$0:Lcom/android/wm/shell/common/magnetictarget/d;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/magnetictarget/d;->getMagnetListener()Lcom/android/wm/shell/common/magnetictarget/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/wm/shell/common/magnetictarget/a;->onReleasedInTarget()V

    iget-object v0, p0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$maybeConsumeMotionEvent$1;->this$0:Lcom/android/wm/shell/common/magnetictarget/d;

    invoke-static {v0}, Lcom/android/wm/shell/common/magnetictarget/d;->access$setTargetObjectIsStuckTo$p(Lcom/android/wm/shell/common/magnetictarget/d;)V

    iget-object p0, p0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$maybeConsumeMotionEvent$1;->this$0:Lcom/android/wm/shell/common/magnetictarget/d;

    invoke-static {p0}, Lcom/android/wm/shell/common/magnetictarget/d;->access$vibrateIfEnabled(Lcom/android/wm/shell/common/magnetictarget/d;)V

    sget-object p0, Le3/f;->a:Le3/f;

    return-object p0
.end method
