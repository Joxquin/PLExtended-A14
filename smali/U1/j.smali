.class public final LU1/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:LU1/k;


# direct methods
.method public constructor <init>(LU1/k;)V
    .locals 0

    iput-object p1, p0, LU1/j;->a:LU1/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/content/Intent;

    iget-object p0, p0, LU1/j;->a:LU1/k;

    invoke-static {p0}, LU1/k;->a(LU1/k;)V

    return-void
.end method
