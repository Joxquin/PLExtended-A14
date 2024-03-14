.class public abstract Lv3/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public d:J

.field public e:Lv3/j;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 4
    sget-object v0, Lv3/m;->g:Lv3/k;

    const-wide/16 v1, 0x0

    invoke-direct {p0, v1, v2, v0}, Lv3/i;-><init>(JLv3/j;)V

    return-void
.end method

.method public constructor <init>(JLv3/j;)V
    .locals 1

    const-string v0, "taskContext"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lv3/i;->d:J

    .line 3
    iput-object p3, p0, Lv3/i;->e:Lv3/j;

    return-void
.end method
