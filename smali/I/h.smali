.class public final LI/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LI/g;


# instance fields
.field public final a:Landroid/os/LocaleList;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Landroid/os/LocaleList;

    iput-object p1, p0, LI/h;->a:Landroid/os/LocaleList;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, LI/h;->a:Landroid/os/LocaleList;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, LI/g;

    invoke-interface {p1}, LI/g;->a()Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, LI/h;->a:Landroid/os/LocaleList;

    invoke-virtual {p0, p1}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, LI/h;->a:Landroid/os/LocaleList;

    invoke-virtual {p0}, Landroid/os/LocaleList;->hashCode()I

    move-result p0

    return p0
.end method

.method public final isEmpty()Z
    .locals 0

    iget-object p0, p0, LI/h;->a:Landroid/os/LocaleList;

    invoke-virtual {p0}, Landroid/os/LocaleList;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LI/h;->a:Landroid/os/LocaleList;

    invoke-virtual {p0}, Landroid/os/LocaleList;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
