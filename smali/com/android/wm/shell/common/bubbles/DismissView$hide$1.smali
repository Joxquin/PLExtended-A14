.class final Lcom/android/wm/shell/common/bubbles/DismissView$hide$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lm3/a;


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/common/bubbles/h;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/bubbles/h;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/common/bubbles/DismissView$hide$1;->this$0:Lcom/android/wm/shell/common/bubbles/h;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/common/bubbles/DismissView$hide$1;->this$0:Lcom/android/wm/shell/common/bubbles/h;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    sget-object p0, Le3/f;->a:Le3/f;

    return-object p0
.end method
