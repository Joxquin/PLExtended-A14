.class public final LX/O;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:LX/S;


# direct methods
.method public constructor <init>(LX/S;)V
    .locals 0

    iput-object p1, p0, LX/O;->d:LX/S;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, LX/O;->d:LX/S;

    invoke-virtual {p0}, LX/S;->f()V

    return-void
.end method
