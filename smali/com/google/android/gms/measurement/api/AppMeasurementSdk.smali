.class public Lcom/google/android/gms/measurement/api/AppMeasurementSdk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-sdk-api@@18.0.3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/measurement/api/AppMeasurementSdk$OnEventListener;,
        Lcom/google/android/gms/measurement/api/AppMeasurementSdk$EventInterceptor;,
        Lcom/google/android/gms/measurement/api/AppMeasurementSdk$ConditionalUserProperty;
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/measurement/zzbs;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zzbs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->zza:Lcom/google/android/gms/internal/measurement/zzbs;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/android/gms/measurement/api/AppMeasurementSdk;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 1
    .end local p0    # "context":Landroid/content/Context;
    const/4 v0, 0x0

    invoke-static {p0, v0, v0, v0, v0}, Lcom/google/android/gms/internal/measurement/zzbs;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/internal/measurement/zzbs;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzbs;->zzb()Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/measurement/api/AppMeasurementSdk;
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "logTag"    # Ljava/lang/String;
    .param p2, "origin"    # Ljava/lang/String;
    .param p3, "customAppId"    # Ljava/lang/String;
    .param p4, "extraParameters"    # Landroid/os/Bundle;

    .line 3
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "logTag":Ljava/lang/String;
    .end local p2    # "origin":Ljava/lang/String;
    .end local p3    # "customAppId":Ljava/lang/String;
    .end local p4    # "extraParameters":Landroid/os/Bundle;
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/measurement/zzbs;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/internal/measurement/zzbs;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzbs;->zzb()Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public beginAdUnitExposure(Ljava/lang/String;)V
    .locals 1
    .param p1, "adUnitId"    # Ljava/lang/String;

    .end local p0    # "this":Lcom/google/android/gms/measurement/api/AppMeasurementSdk;
    .end local p1    # "adUnitId":Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->zza:Lcom/google/android/gms/internal/measurement/zzbs;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzbs;->zzu(Ljava/lang/String;)V

    return-void
.end method

.method public clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "userPropertyName"    # Ljava/lang/String;
    .param p2, "clearEventName"    # Ljava/lang/String;
    .param p3, "clearEventParams"    # Landroid/os/Bundle;

    .end local p0    # "this":Lcom/google/android/gms/measurement/api/AppMeasurementSdk;
    .end local p1    # "userPropertyName":Ljava/lang/String;
    .end local p2    # "clearEventName":Ljava/lang/String;
    .end local p3    # "clearEventParams":Landroid/os/Bundle;
    iget-object v0, p0, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->zza:Lcom/google/android/gms/internal/measurement/zzbs;

    .line 1
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzbs;->zzl(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public endAdUnitExposure(Ljava/lang/String;)V
    .locals 1
    .param p1, "adUnitId"    # Ljava/lang/String;

    .end local p0    # "this":Lcom/google/android/gms/measurement/api/AppMeasurementSdk;
    .end local p1    # "adUnitId":Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->zza:Lcom/google/android/gms/internal/measurement/zzbs;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzbs;->zzv(Ljava/lang/String;)V

    return-void
.end method

.method public generateEventId()J
    .locals 2

    .end local p0    # "this":Lcom/google/android/gms/measurement/api/AppMeasurementSdk;
    iget-object v0, p0, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->zza:Lcom/google/android/gms/internal/measurement/zzbs;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbs;->zzy()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAppIdOrigin()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->zza:Lcom/google/android/gms/internal/measurement/zzbs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbs;->zzG()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppInstanceId()Ljava/lang/String;
    .locals 1

    .end local p0    # "this":Lcom/google/android/gms/measurement/api/AppMeasurementSdk;
    iget-object v0, p0, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->zza:Lcom/google/android/gms/internal/measurement/zzbs;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbs;->zzx()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConditionalUserProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "propertyNamePrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .end local p0    # "this":Lcom/google/android/gms/measurement/api/AppMeasurementSdk;
    .end local p1    # "origin":Ljava/lang/String;
    .end local p2    # "propertyNamePrefix":Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->zza:Lcom/google/android/gms/internal/measurement/zzbs;

    .line 1
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzbs;->zzm(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getCurrentScreenClass()Ljava/lang/String;
    .locals 1

    .end local p0    # "this":Lcom/google/android/gms/measurement/api/AppMeasurementSdk;
    iget-object v0, p0, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->zza:Lcom/google/android/gms/internal/measurement/zzbs;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbs;->zzA()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentScreenName()Ljava/lang/String;
    .locals 1

    .end local p0    # "this":Lcom/google/android/gms/measurement/api/AppMeasurementSdk;
    iget-object v0, p0, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->zza:Lcom/google/android/gms/internal/measurement/zzbs;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbs;->zzz()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGmpAppId()Ljava/lang/String;
    .locals 1

    .end local p0    # "this":Lcom/google/android/gms/measurement/api/AppMeasurementSdk;
    iget-object v0, p0, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->zza:Lcom/google/android/gms/internal/measurement/zzbs;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbs;->zzw()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxUserProperties(Ljava/lang/String;)I
    .locals 1
    .param p1, "origin"    # Ljava/lang/String;

    .end local p0    # "this":Lcom/google/android/gms/measurement/api/AppMeasurementSdk;
    .end local p1    # "origin":Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->zza:Lcom/google/android/gms/internal/measurement/zzbs;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzbs;->zzE(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getUserProperties(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 1
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "propertyNamePrefix"    # Ljava/lang/String;
    .param p3, "includeInternal"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .end local p0    # "this":Lcom/google/android/gms/measurement/api/AppMeasurementSdk;
    .end local p1    # "origin":Ljava/lang/String;
    .end local p2    # "propertyNamePrefix":Ljava/lang/String;
    .end local p3    # "includeInternal":Z
    iget-object v0, p0, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->zza:Lcom/google/android/gms/internal/measurement/zzbs;

    .line 1
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzbs;->zzB(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "params"    # Landroid/os/Bundle;

    .end local p0    # "this":Lcom/google/android/gms/measurement/api/AppMeasurementSdk;
    .end local p1    # "origin":Ljava/lang/String;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "params":Landroid/os/Bundle;
    iget-object v0, p0, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->zza:Lcom/google/android/gms/internal/measurement/zzbs;

    .line 1
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzbs;->zzh(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public logEventNoInterceptor(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V
    .locals 6
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "params"    # Landroid/os/Bundle;
    .param p4, "timestampInMillis"    # J

    .end local p0    # "this":Lcom/google/android/gms/measurement/api/AppMeasurementSdk;
    .end local p1    # "origin":Ljava/lang/String;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "params":Landroid/os/Bundle;
    .end local p4    # "timestampInMillis":J
    iget-object v0, p0, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->zza:Lcom/google/android/gms/internal/measurement/zzbs;

    .line 1
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzbs;->zzi(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    return-void
.end method

.method public performAction(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .end local p0    # "this":Lcom/google/android/gms/measurement/api/AppMeasurementSdk;
    .end local p1    # "bundle":Landroid/os/Bundle;
    iget-object v0, p0, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->zza:Lcom/google/android/gms/internal/measurement/zzbs;

    .line 1
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/measurement/zzbs;->zzD(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    return-void
.end method

.method public performActionWithResponse(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .end local p0    # "this":Lcom/google/android/gms/measurement/api/AppMeasurementSdk;
    .end local p1    # "bundle":Landroid/os/Bundle;
    iget-object v0, p0, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->zza:Lcom/google/android/gms/internal/measurement/zzbs;

    .line 1
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/measurement/zzbs;->zzD(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public registerOnMeasurementEventListener(Lcom/google/android/gms/measurement/api/AppMeasurementSdk$OnEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/measurement/api/AppMeasurementSdk$OnEventListener;

    .end local p0    # "this":Lcom/google/android/gms/measurement/api/AppMeasurementSdk;
    .end local p1    # "listener":Lcom/google/android/gms/measurement/api/AppMeasurementSdk$OnEventListener;
    iget-object v0, p0, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->zza:Lcom/google/android/gms/internal/measurement/zzbs;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzbs;->zze(Lcom/google/android/gms/measurement/internal/zzgq;)V

    return-void
.end method

.method public setConditionalUserProperty(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "conditionalUserProperty"    # Landroid/os/Bundle;

    .end local p0    # "this":Lcom/google/android/gms/measurement/api/AppMeasurementSdk;
    .end local p1    # "conditionalUserProperty":Landroid/os/Bundle;
    iget-object v0, p0, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->zza:Lcom/google/android/gms/internal/measurement/zzbs;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzbs;->zzk(Landroid/os/Bundle;)V

    return-void
.end method

.method public setConsent(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "consentMap"    # Landroid/os/Bundle;

    .end local p0    # "this":Lcom/google/android/gms/measurement/api/AppMeasurementSdk;
    .end local p1    # "consentMap":Landroid/os/Bundle;
    iget-object v0, p0, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->zza:Lcom/google/android/gms/internal/measurement/zzbs;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzbs;->zzq(Landroid/os/Bundle;)V

    return-void
.end method

.method public setCurrentScreen(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "screenName"    # Ljava/lang/String;
    .param p3, "screenClassOverride"    # Ljava/lang/String;

    .end local p0    # "this":Lcom/google/android/gms/measurement/api/AppMeasurementSdk;
    .end local p1    # "activity":Landroid/app/Activity;
    .end local p2    # "screenName":Ljava/lang/String;
    .end local p3    # "screenClassOverride":Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->zza:Lcom/google/android/gms/internal/measurement/zzbs;

    .line 1
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzbs;->zzo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEventInterceptor(Lcom/google/android/gms/measurement/api/AppMeasurementSdk$EventInterceptor;)V
    .locals 1
    .param p1, "interceptor"    # Lcom/google/android/gms/measurement/api/AppMeasurementSdk$EventInterceptor;

    .end local p0    # "this":Lcom/google/android/gms/measurement/api/AppMeasurementSdk;
    .end local p1    # "interceptor":Lcom/google/android/gms/measurement/api/AppMeasurementSdk$EventInterceptor;
    iget-object v0, p0, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->zza:Lcom/google/android/gms/internal/measurement/zzbs;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzbs;->zzd(Lcom/google/android/gms/measurement/internal/zzgp;)V

    return-void
.end method

.method public setMeasurementEnabled(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "enabled"    # Ljava/lang/Boolean;

    .end local p0    # "this":Lcom/google/android/gms/measurement/api/AppMeasurementSdk;
    .end local p1    # "enabled":Ljava/lang/Boolean;
    iget-object v0, p0, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->zza:Lcom/google/android/gms/internal/measurement/zzbs;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzbs;->zzp(Ljava/lang/Boolean;)V

    return-void
.end method

.method public setMeasurementEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .end local p0    # "this":Lcom/google/android/gms/measurement/api/AppMeasurementSdk;
    .end local p1    # "enabled":Z
    iget-object v0, p0, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->zza:Lcom/google/android/gms/internal/measurement/zzbs;

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzbs;->zzp(Ljava/lang/Boolean;)V

    return-void
.end method

.method public setUserProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .end local p0    # "this":Lcom/google/android/gms/measurement/api/AppMeasurementSdk;
    .end local p1    # "origin":Ljava/lang/String;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "value":Ljava/lang/Object;
    iget-object v0, p0, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->zza:Lcom/google/android/gms/internal/measurement/zzbs;

    .line 1
    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/google/android/gms/internal/measurement/zzbs;->zzj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public unregisterOnMeasurementEventListener(Lcom/google/android/gms/measurement/api/AppMeasurementSdk$OnEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/measurement/api/AppMeasurementSdk$OnEventListener;

    .end local p0    # "this":Lcom/google/android/gms/measurement/api/AppMeasurementSdk;
    .end local p1    # "listener":Lcom/google/android/gms/measurement/api/AppMeasurementSdk$OnEventListener;
    iget-object v0, p0, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->zza:Lcom/google/android/gms/internal/measurement/zzbs;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzbs;->zzf(Lcom/google/android/gms/measurement/internal/zzgq;)V

    return-void
.end method

.method public final zza(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->zza:Lcom/google/android/gms/internal/measurement/zzbs;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzbs;->zzI(Z)V

    return-void
.end method
