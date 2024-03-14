.class public abstract Lo3/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lkotlin/random/Random$Default;

.field public static final e:Lo3/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/random/Random$Default;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/random/Random$Default;-><init>(I)V

    sput-object v0, Lo3/d;->d:Lkotlin/random/Random$Default;

    sget-object v0, Lh3/c;->a:Lh3/b;

    invoke-virtual {v0}, Lh3/b;->b()Lo3/d;

    move-result-object v0

    sput-object v0, Lo3/d;->e:Lo3/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method
