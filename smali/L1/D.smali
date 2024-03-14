.class public final LL1/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic d:LL1/w;


# direct methods
.method public constructor <init>(LL1/w;)V
    .locals 0

    iput-object p1, p0, LL1/D;->d:LL1/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, LL1/D;->d:LL1/w;

    iget-boolean p1, p0, LL1/w;->n:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, LL1/w;->a()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, LL1/w;->k:LX1/s;

    iget-object p0, p0, LX1/s;->a:LX1/t;

    iget-object p0, p0, LX1/t;->b:LX1/u;

    invoke-static {p0}, LX1/u;->j(LX1/u;)Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    :goto_0
    return-void
.end method
