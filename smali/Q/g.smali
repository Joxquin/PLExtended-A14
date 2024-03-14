.class public final LQ/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:LQ/i;


# direct methods
.method public constructor <init>(LQ/i;)V
    .locals 0

    iput-object p1, p0, LQ/g;->d:LQ/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, LQ/g;->d:LQ/i;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LQ/i;->o(I)V

    return-void
.end method
