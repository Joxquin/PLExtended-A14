.class public final LT1/e;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field public final synthetic a:LT1/g;


# direct methods
.method public constructor <init>(LT1/g;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, LT1/e;->a:LT1/g;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    iget-object p0, p0, LT1/e;->a:LT1/g;

    invoke-virtual {p0}, LT1/g;->f()V

    return-void
.end method
