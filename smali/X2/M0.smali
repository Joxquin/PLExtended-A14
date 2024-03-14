.class public final LX2/M0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:LX2/N0;

.field public final synthetic e:Ljava/lang/Runnable;

.field public final synthetic f:LX2/P0;


# direct methods
.method public constructor <init>(LX2/P0;LX2/N0;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, LX2/M0;->f:LX2/P0;

    iput-object p2, p0, LX2/M0;->d:LX2/N0;

    iput-object p3, p0, LX2/M0;->e:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, LX2/M0;->f:LX2/P0;

    iget-object p0, p0, LX2/M0;->d:LX2/N0;

    invoke-virtual {v0, p0}, LX2/P0;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, LX2/M0;->e:Ljava/lang/Runnable;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "(scheduled in SynchronizationContext)"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
