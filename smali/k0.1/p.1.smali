.class public final synthetic Lk0/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic d:Lk0/m;


# direct methods
.method public synthetic constructor <init>(Lk0/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk0/p;->d:Lk0/m;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lk0/H;

    iget-object p0, p0, Lk0/p;->d:Lk0/m;

    invoke-direct {v0, p0}, Lk0/H;-><init>(Lk0/m;)V

    return-object v0
.end method
