.class public final synthetic LX1/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:LX1/u;

.field public final synthetic e:Landroid/view/ViewGroup;

.field public final synthetic f:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(LX1/u;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LX1/n;->d:LX1/u;

    iput-object p2, p0, LX1/n;->e:Landroid/view/ViewGroup;

    iput-object p3, p0, LX1/n;->f:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LX1/n;->d:LX1/u;

    iget-object v1, p0, LX1/n;->e:Landroid/view/ViewGroup;

    iget-object p0, p0, LX1/n;->f:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v0, LX1/u;->f:Lcom/android/launcher3/util/ViewCache;

    const v1, 0x7f0d0124

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher3/util/ViewCache;->recycleView(Landroid/view/View;I)V

    return-void
.end method
