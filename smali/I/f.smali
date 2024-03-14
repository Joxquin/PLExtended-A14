.class public final LI/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:LI/f;


# instance fields
.field public final a:LI/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/util/Locale;

    new-instance v1, Landroid/os/LocaleList;

    invoke-direct {v1, v0}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    new-instance v0, LI/f;

    new-instance v2, LI/h;

    invoke-direct {v2, v1}, LI/h;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v2}, LI/f;-><init>(LI/h;)V

    sput-object v0, LI/f;->b:LI/f;

    return-void
.end method

.method public constructor <init>(LI/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LI/f;->a:LI/g;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, LI/f;

    if-eqz v0, :cond_0

    check-cast p1, LI/f;

    iget-object p1, p1, LI/f;->a:LI/g;

    iget-object p0, p0, LI/f;->a:LI/g;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, LI/f;->a:LI/g;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LI/f;->a:LI/g;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
