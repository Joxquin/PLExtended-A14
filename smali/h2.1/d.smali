.class public final Lh2/d;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lh2/h;


# direct methods
.method public constructor <init>(Lh2/h;)V
    .locals 0

    iput-object p1, p0, Lh2/d;->a:Lh2/h;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    iget-object p2, p0, Lh2/d;->a:Lh2/h;

    iget-object p2, p2, Lh2/h;->f:Lh2/m;

    invoke-virtual {p2}, Lh2/m;->b()V

    iget-object p2, p0, Lh2/d;->a:Lh2/h;

    iget-object p2, p2, Lh2/h;->g:Lh2/a;

    invoke-virtual {p2}, Lh2/m;->b()V

    iget-object p2, p0, Lh2/d;->a:Lh2/h;

    invoke-virtual {p2, p1}, Lh2/h;->e(Landroid/content/Context;)V

    iget-object p0, p0, Lh2/d;->a:Lh2/h;

    iget p1, p0, Lh2/h;->j:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lh2/h;->d()V

    :cond_0
    return-void
.end method
