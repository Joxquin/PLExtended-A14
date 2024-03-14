.class public final Lk0/M;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public final b:Lq/h;

.field public final c:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lk0/M;->a:Z

    new-instance v1, Lq/h;

    invoke-direct {v1, v0}, Lq/h;-><init>(I)V

    iput-object v1, p0, Lk0/M;->b:Lq/h;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lk0/M;->c:Ljava/util/Map;

    return-void
.end method
