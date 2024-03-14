.class public final LA0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, LA0/c;->d:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    sget-object v0, LA0/g;->j:LA0/x;

    iget-object p0, p0, LA0/c;->d:Landroid/content/Context;

    invoke-static {p0}, LA0/d;->a(Landroid/content/Context;)LA0/x;

    move-result-object p0

    return-object p0
.end method
