.class public final Le/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb/b;


# instance fields
.field public final synthetic a:Landroidx/appcompat/app/a;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/a;)V
    .locals 0

    iput-object p1, p0, Le/o;->a:Landroidx/appcompat/app/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 1

    iget-object p0, p0, Le/o;->a:Landroidx/appcompat/app/a;

    invoke-virtual {p0}, Landroidx/appcompat/app/a;->k()Le/r;

    move-result-object p1

    invoke-virtual {p1}, Le/r;->i()V

    invoke-virtual {p0}, Landroidx/activity/l;->getSavedStateRegistry()La0/e;

    move-result-object p0

    const-string v0, "androidx:appcompat"

    invoke-virtual {p0, v0}, La0/e;->a(Ljava/lang/String;)Landroid/os/Bundle;

    invoke-virtual {p1}, Le/r;->m()V

    return-void
.end method
