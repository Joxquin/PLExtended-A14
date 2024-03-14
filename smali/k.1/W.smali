.class public final Lk/W;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final synthetic d:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field public final synthetic e:Lk/X;


# direct methods
.method public constructor <init>(Lk/X;Lk/S;)V
    .locals 0

    iput-object p1, p0, Lk/W;->e:Lk/X;

    iput-object p2, p0, Lk/W;->d:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 1

    iget-object v0, p0, Lk/W;->e:Lk/X;

    iget-object v0, v0, Lk/X;->H:Lk/b0;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lk/W;->d:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method
