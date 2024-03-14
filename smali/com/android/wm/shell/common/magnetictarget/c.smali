.class public final Lcom/android/wm/shell/common/magnetictarget/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/view/View;

.field public final b:I

.field public final c:Landroid/graphics/PointF;

.field public final d:[I


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/bubbles/e;I)V
    .locals 1

    const-string v0, "targetView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/common/magnetictarget/c;->a:Landroid/view/View;

    iput p2, p0, Lcom/android/wm/shell/common/magnetictarget/c;->b:I

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/common/magnetictarget/c;->c:Landroid/graphics/PointF;

    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/wm/shell/common/magnetictarget/c;->d:[I

    return-void
.end method
