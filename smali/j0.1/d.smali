.class public final Lj0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lj0/n;


# direct methods
.method public constructor <init>(Lj0/n;)V
    .locals 0

    iput-object p1, p0, Lj0/d;->d:Lj0/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lj0/d;->d:Lj0/n;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lj0/n;->w(I)V

    iget-object p0, p0, Lj0/d;->d:Lj0/n;

    invoke-virtual {p0}, Lj0/n;->r()V

    return-void
.end method
