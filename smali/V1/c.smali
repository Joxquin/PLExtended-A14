.class public final LV1/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:LL1/A;

.field public b:LV1/b;

.field public c:LL1/B;

.field public final d:Ljava/util/ArrayList;

.field public final e:Landroid/content/Context;

.field public f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LV1/c;->d:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput v0, p0, LV1/c;->f:I

    iput-object p1, p0, LV1/c;->e:Landroid/content/Context;

    return-void
.end method
