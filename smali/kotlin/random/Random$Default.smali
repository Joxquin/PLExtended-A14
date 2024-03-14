.class public final Lkotlin/random/Random$Default;
.super Lo3/d;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lo3/d;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlin/random/Random$Default;-><init>()V

    return-void
.end method

.method private final writeReplace()Ljava/lang/Object;
    .locals 0

    sget-object p0, Lkotlin/random/Random$Default$Serialized;->d:Lkotlin/random/Random$Default$Serialized;

    return-object p0
.end method


# virtual methods
.method public final a()I
    .locals 0

    sget-object p0, Lo3/d;->e:Lo3/d;

    invoke-virtual {p0}, Lo3/d;->a()I

    move-result p0

    return p0
.end method
