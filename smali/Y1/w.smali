.class public final synthetic LY1/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic d:LY1/y;


# direct methods
.method public synthetic constructor <init>(LY1/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LY1/w;->d:LY1/y;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, LY1/w;->d:LY1/y;

    invoke-static {p0}, LY1/y;->f(LY1/y;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
