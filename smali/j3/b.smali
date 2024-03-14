.class public Lj3/b;
.super Li3/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Li3/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()Lo3/d;
    .locals 1

    sget-object p0, Lj3/a;->a:Ljava/lang/Integer;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v0, 0x22

    if-lt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    if-eqz p0, :cond_2

    new-instance p0, Lp3/a;

    invoke-direct {p0}, Lp3/a;-><init>()V

    goto :goto_2

    :cond_2
    new-instance p0, Lo3/c;

    invoke-direct {p0}, Lo3/c;-><init>()V

    :goto_2
    return-object p0
.end method
