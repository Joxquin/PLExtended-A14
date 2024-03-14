.class public final Lk/r0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lk/s0;


# direct methods
.method public constructor <init>(Lk/s0;)V
    .locals 0

    iput-object p1, p0, Lk/r0;->d:Lk/s0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lk/r0;->d:Lk/s0;

    const/4 v0, 0x0

    iput-object v0, p0, Lk/s0;->o:Lk/r0;

    invoke-virtual {p0}, Lk/s0;->drawableStateChanged()V

    return-void
.end method
