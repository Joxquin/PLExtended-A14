.class public final synthetic Landroidx/activity/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La0/d;


# instance fields
.field public final synthetic a:Landroidx/activity/l;


# direct methods
.method public synthetic constructor <init>(Landroidx/activity/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/d;->a:Landroidx/activity/l;

    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroidx/activity/d;->a:Landroidx/activity/l;

    invoke-static {p0}, Landroidx/activity/l;->d(Landroidx/activity/l;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
