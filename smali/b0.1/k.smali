.class public final Lb0/k;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lb0/l;


# direct methods
.method public constructor <init>(Lb0/l;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lb0/k;->a:Lb0/l;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    iget-object p0, p0, Lb0/k;->a:Lb0/l;

    iget-object p0, p0, Lb0/l;->e:Lb0/j;

    invoke-static {p0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
