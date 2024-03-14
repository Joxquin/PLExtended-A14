.class public final Lf0/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lf0/x;


# direct methods
.method public constructor <init>(Lf0/x;)V
    .locals 0

    iput-object p1, p0, Lf0/s;->d:Lf0/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lf0/s;->d:Lf0/x;

    invoke-virtual {v0}, Lf0/x;->x()V

    iget-object p0, p0, Lf0/s;->d:Lf0/x;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf0/x;->Q:Z

    return-void
.end method
