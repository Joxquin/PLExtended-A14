.class public final Le/O;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static d:Le/O;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/location/LocationManager;

.field public final c:Le/N;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/location/LocationManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Le/N;

    invoke-direct {v0}, Le/N;-><init>()V

    iput-object v0, p0, Le/O;->c:Le/N;

    iput-object p1, p0, Le/O;->a:Landroid/content/Context;

    iput-object p2, p0, Le/O;->b:Landroid/location/LocationManager;

    return-void
.end method
