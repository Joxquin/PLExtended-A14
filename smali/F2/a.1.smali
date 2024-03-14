.class public final synthetic LF2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:LF2/f;


# direct methods
.method public synthetic constructor <init>(LF2/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LF2/a;->d:LF2/f;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, LF2/a;->d:LF2/f;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LF2/f;->t(Z)V

    return-void
.end method
