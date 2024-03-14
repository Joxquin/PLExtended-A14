.class public final LL1/x0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic d:LX1/s;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:LL1/A0;


# direct methods
.method public constructor <init>(LL1/A0;LX1/s;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LL1/x0;->f:LL1/A0;

    iput-object p2, p0, LL1/x0;->d:LX1/s;

    iput-object p3, p0, LL1/x0;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 5

    iget-object p1, p0, LL1/x0;->d:LX1/s;

    iget-object v0, p0, LL1/x0;->e:Ljava/lang/String;

    iget-object v1, p1, LX1/s;->a:LX1/t;

    iget-object v1, v1, LX1/t;->b:LX1/u;

    const/4 v2, 0x1

    iput-boolean v2, v1, LX1/u;->u:Z

    new-instance v3, LX1/r;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v0, v4}, LX1/r;-><init>(LX1/s;Ljava/lang/Object;I)V

    invoke-virtual {v1, v3}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->endLiveTileMode(Ljava/lang/Runnable;)V

    iget-object p1, p0, LL1/x0;->f:LL1/A0;

    invoke-virtual {p1, v4}, LL1/A0;->b(Z)V

    iget-object p0, p0, LL1/x0;->f:LL1/A0;

    iput-boolean v2, p0, LL1/A0;->i:Z

    return v2
.end method
