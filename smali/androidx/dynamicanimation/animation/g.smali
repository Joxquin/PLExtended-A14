.class public final Landroidx/dynamicanimation/animation/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final i:Ljava/lang/ThreadLocal;


# instance fields
.field public final a:Lq/m;

.field public final b:Ljava/util/ArrayList;

.field public final c:Landroidx/dynamicanimation/animation/b;

.field public final d:Landroidx/dynamicanimation/animation/a;

.field public final e:Landroidx/dynamicanimation/animation/r;

.field public f:Z

.field public g:F

.field public h:Landroidx/dynamicanimation/animation/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/dynamicanimation/animation/g;->i:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Landroidx/dynamicanimation/animation/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lq/m;

    invoke-direct {v0}, Lq/m;-><init>()V

    iput-object v0, p0, Landroidx/dynamicanimation/animation/g;->a:Lq/m;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/dynamicanimation/animation/g;->b:Ljava/util/ArrayList;

    new-instance v0, Landroidx/dynamicanimation/animation/b;

    invoke-direct {v0, p0}, Landroidx/dynamicanimation/animation/b;-><init>(Landroidx/dynamicanimation/animation/g;)V

    iput-object v0, p0, Landroidx/dynamicanimation/animation/g;->c:Landroidx/dynamicanimation/animation/b;

    new-instance v0, Landroidx/dynamicanimation/animation/a;

    invoke-direct {v0, p0}, Landroidx/dynamicanimation/animation/a;-><init>(Landroidx/dynamicanimation/animation/g;)V

    iput-object v0, p0, Landroidx/dynamicanimation/animation/g;->d:Landroidx/dynamicanimation/animation/a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/dynamicanimation/animation/g;->f:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/dynamicanimation/animation/g;->g:F

    iput-object p1, p0, Landroidx/dynamicanimation/animation/g;->e:Landroidx/dynamicanimation/animation/r;

    return-void
.end method
